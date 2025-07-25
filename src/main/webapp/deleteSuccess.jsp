<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Confirmation</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f0f4f8;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .box {
        background-color: #ffffff;
        padding: 40px 50px;
        border-radius: 12px;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    h3 {
        color: #27ae60;
        font-size: 22px;
        margin-bottom: 25px;
    }

    a {
        display: inline-block;
        padding: 10px 20px;
        background-color: #2980b9;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        transition: background-color 0.3s ease;
    }

    a:hover {
        background-color: #1f6391;
    }
</style>
</head>
<body>

    <div class="box">
        <h3>Student deleted successfully!</h3>
        <a href="deleteStudent.jsp">Delete another</a>
    </div>

</body>
</html>
