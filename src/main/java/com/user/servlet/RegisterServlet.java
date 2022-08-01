package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ebook.DAO.UserDAOImpl;
import com.ebook.DB.DBConnect;
import com.ebook.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phoneno=req.getParameter("phoneno");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			//System.out.println(name+" "+email+" "+phoneno+" "+password+" "+check);

			User user=new User();
			user.setName(name);
			user.setEmail(email);
			user.setPhoneno(phoneno);
			user.setPassword(password);
			if(check!=null)
			{
			UserDAOImpl dao=new UserDAOImpl(DBConnect.getConnection());
			boolean f=dao.userRegister(user);
			
			if(f)
			{
				System.out.println("User Register Success..");
			}else {
				System.out.println("Something wrong on server..");
			}
			}else {
				System.out.println("Please Check Agree Terms & Conditions");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}




