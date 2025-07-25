<%@ page import="dto.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #e9eff6;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        background-color: #ffffff;
        padding: 40px 60px;
        border-radius: 20px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        width: 450px;
        text-align: left;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .container:hover {
        transform: translateY(-5px);
        box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
    }

    h2 {
        text-align: center;
        margin-bottom: 30px;
        font-size: 26px;
        color: #2c3e50;
        border-bottom: 1px solid #ddd;
        padding-bottom: 10px;
    }

    .student-info h3 {
        margin: 15px 0;
        font-weight: 500;
        color: #444;
        font-size: 18px;
    }

    .student-info h3 span {
        font-weight: bold;
        color: #2c3e50;
        margin-right: 10px;
    }

    .btn-container {
        display: flex;
        justify-content: center;
        margin-top: 30px;
    }

    .btn-container button {
        padding: 10px 20px;
        background-color: #3498db;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 15px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn-container button:hover {
        background-color: #2980b9;
    }
</style>
</head>
<body>

    <%
        Student student = (Student) request.getAttribute("student");
        int id = student.getId();
        String name = student.getName();
        String email = student.getEmail();
        String gender = student.getGender();
        long phno = student.getPhno();
    %>

    <div class="container">
        <h2>Student Information</h2>
        <div class="student-info">
            <h3><span>ID:</span> <%= id %></h3>
            <h3><span>Name:</span> <%= name %></h3>
            <h3><span>Email:</span> <%= email %></h3>
            <h3><span>Gender:</span> <%= gender %></h3>
            <h3><span>Phone:</span> <%= phno %></h3>
        </div>

        <div class="btn-container">
            <form action="index.jsp">
                <button type="submit">Go to Home</button>
            </form>
        </div>
    </div>

</body>
</html>
