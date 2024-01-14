<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BookManager</title>
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

        blockquote {
            margin: 20px 0;
            padding: 10px;
            background-color: #e8e8e8;
            border-left: 4px solid #007bff;
        }

        button {
            padding: 10px;
            margin: 10px;
            font-size: 16px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <h1>Welcome to the Book Manager</h1>

    <p>Here's a mighty learning quote for you:</p>
    <blockquote>
        "The more that you read, the more things you will know. The more that you learn, the more places you'll go."
        <br>
        - Dr. Seuss
    </blockquote>

    <a href="allBooks.jsp"><button >View All Books</button></a>

    <a href="" target="blank">
        <button>GitHub Repo</button>
    </a>

</body>
</html>
