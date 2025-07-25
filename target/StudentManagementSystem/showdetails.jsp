<%@ page import="dto.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f4f8;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        background-color: #fff;
        padding: 30px 50px;
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        text-align: center;
        width: 400px;
    }

    h2 {
        margin-bottom: 20px;
        color: #333;
    }

    .student-info h3 {
        margin: 10px 0;
        font-weight: normal;
        color: #555;
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
            <h3>ID: <%= id %></h3>
            <h3>Name: <%= name %></h3>
            <h3>Email: <%= email %></h3>
            <h3>Gender: <%= gender %></h3>
            <h3>Phone: <%= phno %></h3>
        </div>
    </div>

</body>
</html>
