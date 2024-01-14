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

    <h1>Book Manager | All Books</h1>

    <a href="addNewBook.jsp"><button>Add New Book +</button></a>

    <table>
        <thead>
            <tr>
                <th>Book ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <!--  dynamic data here-->
            <tr>
                <td>1</td>
                <td>Book Title</td>
                <td>Author Name</td>
                <td>$19.99</td>
                <td class="actions">
                    <a href="editBook"><button class="edit" >EDIT</button></a>  | 
                    <a href="deleteBook"><button class="delete">DELETE</button></a>
                </td>
            </tr>
        </tbody>
    </table>

    

</body>
</html>
