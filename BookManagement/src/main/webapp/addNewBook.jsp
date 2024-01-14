<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BookManager | Add Book</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: bisque;
            color: #333;
            margin: 20px;
        }

        h1 {
            color: #007bff;
        }

        .jumbotron {
            background-color: #f8d7da;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input, button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="jumbotron">
        <h1>Add new Book</h1>
    </div>

    <form action="addBook" method="post">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required>

        <label for="author">Author:</label>
        <input type="text" id="author" name="author" required>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" min=0 required>

        <button type="submit">Submit</button>
    </form>

</body>
</html>
