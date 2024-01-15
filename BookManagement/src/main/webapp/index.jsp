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
            background-color: #f0f5f5; /* Mint color */
            color: #333;
            margin: 20px;
        }

        h1 {
            color: #008080; /* Darker Mint color */
        }

        blockquote {
            margin: 20px 0;
            padding: 10px;
            background-color: #d9f0e6; /* Lighter Mint color */
            border-left: 4px solid #008080; /* Darker Mint color */
        }

        button {
            padding: 10px;
            margin: 10px;
            font-size: 16px;
            background-color: #6aac8a; /* Mint Green */
            color: #fff;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #5a9972; /* Darker Mint Green on hover */
        }
    </style>
</head>
<body>

    <h1>Welcome to the Book Manager</h1>

    
    <blockquote>
        "The more I learn, the more I realize how much I don't know." 
        <br> - Albert Einstein
    </blockquote>

    <a href="allBooks.jsp"><button>View All Books</button></a>

    <a href="https://github.com/Abhiz003/AdvJavaLabExam.git" target="blank">
        <button>GitHub Repo</button>
    </a>

</body>
</html>
