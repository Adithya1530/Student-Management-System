<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>
<style>
	body {
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		background: #f0f4f8;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
	}
	
	.dashboard-container {
		background: #fff;
		padding: 40px 50px;
		border-radius: 15px;
		box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
		text-align: center;
		width: 400px;
	}
	
	.dashboard-container h2 {
		margin-top: 0;
		margin-bottom: 35px;
		font-size: 30px;
		color: #2c3e50;
	}
	
	.dashboard-container button {
		display: block;
		width: 100%;
		padding: 15px;
		margin: 10px 0;
		border: none;
		border-radius: 8px;
		background-color: #3498db;
		color: white;
		font-size: 16px;
		font-weight: bold;
		cursor: pointer;
		transition: all 0.3s ease;
		box-shadow: 0 4px 12px rgba(52, 152, 219, 0.3);
	}
	
	.dashboard-container button:hover {
		background-color: #2980b9;
		box-shadow: 0 6px 16px rgba(41, 128, 185, 0.4);
		transform: translateY(-2px);
	}
	
	.dashboard-container button:active {
		transform: translateY(0);
		box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
	}
</style>
</head>

<body>

	<div class="dashboard-container">
	
	<!-- 
		<%
		String msg = (String)request.getAttribute("msg");
		if(msg!=null) { %>
		<h2><%= msg  %></h2>
		<%}%>
	 -->
	
		<h2>Student Management</h2>

		<form action="addStudent.jsp" method="get">
			<button type="submit">Add Student</button>
		</form>

		<form action="findStudent.jsp" method="get">
			<button type="submit">Find Student</button>
		</form>

		<form action="findStudent_update.jsp" method="get">
			<button type="submit">Update Student</button>
		</form>

		<form action="deleteStudent.jsp" method="get">
			<button type="submit">Delete Student</button>
		</form>

		<form action="findAllStudents" method="get">
			<button type="submit">Find All Students</button>
		</form>
		
		<form action="findStudentbyname.jsp" method="get">
			<button type="submit">Find By Name</button>
		</form>
	</div>

</body>
</html>