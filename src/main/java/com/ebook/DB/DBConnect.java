package com.ebook.DB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect{
	public static void main(String args[])
	{
		String url="jdbc:mysql://localhost:3306/ebook-app";
		String user="root";
		String password="1234";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url,user,password);
			System.out.println("Connection is Successful to the database"+url);
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException throwables) {
			throwables.printStackTrace();
		}
	}

	public static Connection getConnection() {
		// TODO Auto-generated method stub
		return null;
	}
}