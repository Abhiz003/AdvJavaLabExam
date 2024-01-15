<%@page import="com.books.model.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.books.dbutil.DBconnection"%>
<%@page import="com.books.dao.BooksDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Manager | All Books</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f5f5; /* Mint color */
            color: #333;
            margin: 20px;
        }

        h1 {
            color: #008080; /* Darker Mint color */
        }

        a {
            text-decoration: none;
            color: #008080; /* Darker Mint color */
        }

        button {
            padding: 10px;
            font-size: 16px;
            background-color: #6aac8a; /* Mint Green */
            color: #fff;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #5a9972; /* Darker Mint Green on hover */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #008080; /* Darker Mint color */
            color: #fff;
        }

        .actions {
            text-align: center;
        }

        .edit, .delete {
            padding: 8px;
            margin: 4px;
            font-size: 14px;
            background-color: #008080; /* Darker Mint color */
            color: #fff;
            border: none;
            cursor: pointer;
        }

        .edit:hover, .delete:hover {
            background-color: #006666; /* Darker Mint color on hover */
        }

        form {
            margin-top: 20px;
            display: flex;
            align-items: center;
        }

        select, input, button[type="submit"] {
            margin-right: 10px;
            padding: 10px;
            border: 1px solid #008080; /* Darker Mint color */
            border-radius: 4px;
        }

        button[type="submit"] {
            background-color: #008080; /* Darker Mint color */
            color: #fff;
        }

        button[type="submit"]:hover {
            background-color: #006666; /* Darker Mint color on hover */
        }
    </style>
</head>
<body>
    <%
    BooksDao booksDao = new BooksDao(new DBconnection());
    ArrayList<Book> books;

    // Check if the form is submitted for search
    String searchBy = request.getParameter("searchBy");
    String searchValue = request.getParameter("searchValue");

    if (searchBy != null && searchValue != null) {
        books = booksDao.fetchByFilter(searchBy, searchValue);
    } else { 
        books = booksDao.fetchAll();
    }
    %>

    <h1><a href="index.jsp">Book Manager</a> | All Books</h1>

    <a href="addNewBook.jsp"><button>Add New Book +</button></a>

    <% if (books.size() > 0) { %>
        <table>
            <tr>
                <th>Book ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
            <!-- dynamic data here -->
            <%
                for (Book book : books) {
            %>
                <tr>
                    <td><%= book.getBookId() %></td>
                    <td><%= book.getTitle() %></td>
                    <td><%= book.getAuthor() %></td>
                    <td>$<%= book.getPrice() %></td>
                    <td class="actions">
                        <a href="editBook?id=<%= book.getBookId() %>">
                            <button class="edit">EDIT</button>
                        </a>  | 
                        <a href="deleteBook?id=<%= book.getBookId() %>">
                            <button class="delete">DELETE</button>
                        </a>
                    </td>
                </tr>
            <%
                }
            %>
        </table>
    <%
        }
    %>

    <form action="searchBook" method="get">
        <select name="searchBy">
            <option value="title">Title</option>
            <option value="author">Author</option>
            <option value="price">Price</option>
        </select>
        
        <input type="text" name="searchValue" placeholder="Search..." />
        <button type="submit">Search</button>
    </form>
</body>
</html>
