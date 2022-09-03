package com.ebook.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ebook.entity.BookDetails;

public class BookDAOImpl implements BookDAO {

	private Connection connection;

	public BookDAOImpl(Connection connection) {
		super();
		this.connection = connection;
	}

	public boolean addBooks(BookDetails b) {
		boolean f = false;
		try {
			String sql = "insert into book_details(bookname,author,price,bookCategory,status,photo,email) value(?,?,?,?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public List<BookDetails> getAllBooks() {

		List<BookDetails> list = new ArrayList<BookDetails>();
		BookDetails b = null;

		try {
			String sql = "select * from book_details";
			PreparedStatement ps = connection.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(1));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public BookDetails getBookById(int id) {

		BookDetails b = null;
		try {
			String sql = "select * from book_details where book_id=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(1));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return b;
	}

	@Override
	public boolean updateEditBooks(BookDetails b) {
		boolean f = false;
		try {
			String sql = "update book_details set book_name=?,author=?,price=?,status=? where book_id=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getStatus());
			ps.setInt(5, b.getBookId());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean deleteBooks(int id) {
		boolean f = false;
		try {
			String sql = "delete from book_details where book_Id=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
