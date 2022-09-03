package com.ebook.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ebook.entity.User;

public class UserDAOImpl implements UserDAO {

	private Connection connection;

	public UserDAOImpl(Connection connection) {
		super();
		this.connection = connection;
	}

	public boolean userRegister(User user) {
		boolean f=false;

		try {
			String sql = "insert into user(name,email,phoneno,password) values(?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPhoneno());
			ps.setString(4, user.getPassword());

			int i=ps.executeUpdate();
			if(i==1) 
			{
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public User login(String email, String password) {
		User user = null;

		try {
			String sql = "select + from user where email=? and password=?";
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setPhoneno(rs.getString(4));
				user.setPassword(rs.getString(5));
				user.setAddress(rs.getString(6));
				user.setLandmark(rs.getString(7));
				user.setCity(rs.getString(8));
				user.setCounty(rs.getString(9));
				user.setEircode(rs.getString(10));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return user;
	}
}
