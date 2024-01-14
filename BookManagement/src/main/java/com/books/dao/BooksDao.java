package com.books.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.books.dbutil.DBconnection;
import com.books.model.Book;

public class BooksDao {
	private DBconnection dbCon;
	
	
	
	public BooksDao(DBconnection dbCon) {
		this.dbCon = dbCon;
	}


	public void add(Book book) {
		String query = "INSERT INTO books (title, author, price) VALUES (?,?,?)";
		
		Connection con = dbCon.createConnection();
		
		try {
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, book.getTitle());
			pst.setString(2, book.getAuthor());
			pst.setString(3, book.getPrice());
			
		pst.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}
	
	
	public void edit() {
		
	}
	
	public void delete(int bookId) {
	String query = "Delete from books where bookId=?";
		
		try {
			Connection con = dbCon.createConnection();
			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, bookId);
			pst.executeUpdate();
			
			
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	public void fetchOne() {
		
	}
	
	
	public ArrayList<Book> fetchAll() {
		String  query = "SELECT bookId, title, author, price FROM books";
		
		try {
			
			Connection con = dbCon.createConnection();
			PreparedStatement pst = con.prepareStatement(query);
			
			ResultSet rs = pst.executeQuery();
			
			ArrayList<Book> books = new ArrayList<Book>();
			while(rs.next()) {
	
				books.add(new Book(
						rs.getInt("bookId"),
						rs.getString("title"),
						rs.getString("author"),
						rs.getString("price")
						));
			
			}
			return books;
			
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
