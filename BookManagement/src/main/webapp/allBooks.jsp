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
            background-color: #f4f4f4;
            color: #333;
            margin: 20px;
        }

		
        h1 {
            color: #007bff;
        }
        a{ text-decoration:none;}

        button {
            padding: 10px;
            font-size: 16px;
            background-color: #28a745;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #218838;
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
            background-color: #007bff;
            color: #fff;
        }

        .actions {
            text-align: center;
        }

        .edit, .delete {
            padding: 8px;
            margin: 4px;
            font-size: 14px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        .edit:hover, .delete:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
	<%! BooksDao booksDao = new BooksDao(new DBconnection()); %>

    <h1><a href="index.jsp">Book Manager</a> | All Books</h1>

    <a href="addNewBook.jsp"><button>Add New Book +</button></a>


<% ArrayList<Book> books = booksDao.fetchAll();  
	if(books.size() > 0) {   %>
		
		<table>
            <tr>
                <th>Book ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
      
          <!--  dynamic data here-->
          <%
          	for(Book book : books) {
          		%> 
          		
          		
            <tr>
                <td><%= book.getBookId() %></td>
                <td><%=book.getTitle() %></td>
                <td><%=book.getAuthor() %></td>
                <td>$<%=book.getPrice() %></td>
                <td class="actions">
                    <a href="editBook?id=<%=book.getBookId()%>"><button class="edit" >EDIT</button></a>  | 
                    <a href="deleteBook?id=<%=book.getBookId()%>"><button class="delete">DELETE</button></a>
                </td>
            </tr>
          		<% 
          	}
          %>
        
    </table>
	
	<%	
		
	}

%>

    <form>
    	<select>
    		option1 title
    		option2 author
    		option3 price
    	</select>
    	
    	<input  placeholder search/> submit button value search 
    </form>
    

</body>
</html>
