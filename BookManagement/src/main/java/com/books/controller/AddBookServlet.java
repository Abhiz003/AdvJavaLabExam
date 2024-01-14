package com.books.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.books.dao.BooksDao;
import com.books.dbutil.DBconnection;
import com.books.model.Book;

/**
 * Servlet implementation class AddBookServlet
 */
@WebServlet("/addBook")
public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private BooksDao booksDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBookServlet() {
        super();
        
    }
    
    @Override
    public void init(ServletConfig config) throws ServletException {
    
    	super.init(config);
    	this.booksDao = new BooksDao(new DBconnection());
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String title = req.getParameter("title");
		String author = req.getParameter("author");
		String price = req.getParameter("price");
		
		Book book = new Book(title, author, price);
		
		this.booksDao.add(book);
		
		
		res.sendRedirect("allBooks.jsp");
	}

}
