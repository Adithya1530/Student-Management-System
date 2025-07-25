<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Added</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9f7ef;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .success-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            text-align: center;
        }

        .success-container h2 {
            color: #27ae60;
            margin-bottom: 20px;
        }

        .success-container p {
            font-size: 16px;
            color: #333;
        }

        .success-container a {
            display: inline-block;
            margin-top: 25px;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .success-container a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="success-container">
        <h2>Student Added Successfully!</h2>
        <p>The student details have been saved in the system.</p>
        <a href="index.jsp">Go to Home</a>
        <br/><br/>
        <a href="findAllStudents">View All Students</a>
    </div>
</body>
</html>
