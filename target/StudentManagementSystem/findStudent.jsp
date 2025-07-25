<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

        .form-container {
            background-color: #fff;
            padding: 40px;
            width: 400px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #2c3e50;
        }

        .form-container label {
            display: block;
            margin: 15px 0 5px;
            font-weight: bold;
            color: #34495e;
        }

        .form-container input[type="text"],
        .form-container input[type="email"],
        .form-container input[type="tel"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        .form-container input[type="text"]:focus,
        .form-container input[type="email"]:focus,
        .form-container input[type="tel"]:focus {
            border-color: #3498db;
            outline: none;
        }

        .form-container .gender-options {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .form-container .gender-options label {
            font-weight: normal;
        }

        .form-container button[type="submit"] {
            width: 100%;
            padding: 12px;
            margin-top: 30px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            box-shadow: 0 4px 12px rgba(52, 152, 219, 0.3);
            transition: background-color 0.3s ease, transform 0.2s;
        }

        .form-container button[type="submit"]:hover {
            background-color: #2980b9;
            transform: translateY(-2px);
        }

        .form-container button[type="submit"]:active {
            transform: translateY(0);
        }
   	</style>
</head>
<body>
	<div class="form-container">
	    <h2>Student Details</h2>
	    <form action="findstudent" method="post">
	
	        <label for="phno">Phone Number:</label>
	        <input type="tel" id="phno" name="phno" pattern="[0-9]{10}" required />
	
	        <button type="submit">Submit</button>
	    </form>
	</div>
</body>
</html>