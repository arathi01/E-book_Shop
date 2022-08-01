package com.ebook.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
			String sql="insert into user(name,email,phoneno,password) values(?,?,?,?)";
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPhoneno());
			ps.setString(4, user.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}

		return f;
	}
}




