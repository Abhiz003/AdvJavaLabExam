package com.books.model;

public class Book {

	private int bookId;
	private String title;
	private String author;
	private String price;
	
	public Book(int bookId, String title, String author, String price) {
		super();
		this.bookId = bookId;
		this.title = title;
		this.author = author;
		this.price = price;
	}

	public Book() {
		super();	
	}

	public Book(String title, String author, String price) {
		this.title = title;
		this.author = author;
		this.price = price;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		
		return "Book["+bookId +", " +title+", " + author+", " + price +"]";
	}
}
