package com.ebook.DAO;

import com.ebook.entity.User;

public interface UserDAO {
	public boolean userRegister(User user);
	
	public User login(String email,String password);
	

}
