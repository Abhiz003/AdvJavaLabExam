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

/**
 * Servlet implementation class DeleteBookServlet
 */
@WebServlet("/deleteBook")
public class DeleteBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private BooksDao booksDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    @Override
    public void init(ServletConfig config) throws ServletException {
    
    	super.init(config);
    	this.booksDao = new BooksDao(new DBconnection());
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String id = req.getParameter("id");
		
		int bookId = 0;
		if(id != null)
			bookId = Integer.parseInt(id);
		
		
		
		booksDao.delete(bookId);
		res.sendRedirect("allBooks.jsp");
	}

	

}
