package com.ebook.DAO;

import java.util.List;

import com.ebook.entity.BookDetails;

public interface BookDAO {
	
	public boolean addBooks(BookDetails b);
	
	public List<BookDetails> getAllBooks();
	
	public BookDetails getBookById(int id);
	
	public boolean updateEditBooks(BookDetails b);
	
	public boolean deleteBooks(int id);
		
	

}
