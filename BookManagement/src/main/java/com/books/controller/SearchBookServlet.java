package com.books.controller;

import jakarta.servlet.RequestDispatcher;
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
 * Servlet implementation class SearchBookServlet
 */

@WebServlet("/searchBook")
public class SearchBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private BooksDao booksDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchBookServlet() {
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 String searchBy = request.getParameter("searchBy");
	     String searchValue = request.getParameter("searchValue");
	        
	     request.setAttribute("searchBy", searchBy);
	     request.setAttribute("searchValue", searchValue);

	     RequestDispatcher dispatcher = request.getRequestDispatcher("allBooks.jsp");
	     dispatcher.forward(request, response);
		
	}

	

}
