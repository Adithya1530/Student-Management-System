<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.*, dto.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Students</title>
    <style>
        table {
            width: 80%;
            margin: 50px auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background-color: #3498db;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
        }

        .message {
            text-align: center;
            color: red;
            font-size: 18px;
            margin-top: 30px;
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

    <h2>All Registered Students</h2>

    <%
        List<Student> students = (List<Student>) request.getAttribute("students");
        if (students == null || students.isEmpty()) {
    %>
        <div class="message">No student records found.</div>
    <%
        } else {
    %>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Phone Number</th>
            </tr>
            <%
                for (Student s : students) {
            %>
            <tr>
                <td><%= s.getId() %></td>
                <td><%= s.getName() %></td>
                <td><%= s.getEmail() %></td>
                <td><%= s.getGender() %></td>
                <td><%= String.valueOf(s.getPhno()) %></td>
            </tr>
            <%
                }
            %>
        </table>
    <%
        }
    %>
    
    	<div class="btn-container">
            <form action="index.jsp">
                <button type="submit">Go to Home</button>
            </form>
        </div>

</body>
</html>
