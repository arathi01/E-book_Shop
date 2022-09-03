package com.ait.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.File;

import com.ebook.DAO.BookDAOImpl;
import com.ebook.DB.DBConnect;
import com.ebook.entity.BookDetails;

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String bookName = req.getParameter("bname");
			String author = req.getParameter("author");
			String price = req.getParameter("price");
			String categories = req.getParameter("categories");
			String status = req.getParameter("bstatus");
			Part part = req.getPart("bimg");
			String fileName = part.getSubmittedFileName();

			BookDetails b = new BookDetails(bookName, author, price, categories, status, fileName, "admin");
//			System.out.println(b);
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
			
//			String path = getServletContext().getRealPath("")+"book";
//			
//			File f=new File(path); 
//			
//			part.write(path + File.separator + fileName);
//			
			boolean f=dao.addBooks(b);
			
			HttpSession session=req.getSession();
			
			if(f)
			{

				String path = getServletContext().getRealPath("") + "book";
				
				File file = new File(path); 
				
				part.write(path + File.separator + fileName);
				
				session.setAttribute("succMsg","Book Add Successfully");
				resp.sendRedirect("admin/add_books.jsp");
			}else {
				session.setAttribute("failedMsg", "Something wrong on Server");
				resp.sendRedirect("admin/add_books.jsp");
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
