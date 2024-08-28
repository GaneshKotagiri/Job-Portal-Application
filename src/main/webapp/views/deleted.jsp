<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Portal - Home</title>
    <!-- Link to External CSS -->
    <link rel="stylesheet" type="text/css" href="../style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            text-align: center;
        }
        nav {
            background-color: #333;
            overflow: hidden;
        }
        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        nav a:hover {
            background-color: #575757;
            color: white;
        }
        .content-section {
            padding: 20px;
            background-color: white;
            margin: 20px;
            border-radius: 5px;
            text-align: center;
        }
        .content-section h2 {
            margin-top: 0;
        }
        .btn-container {
            margin-top: 20px;
        }
        .btn {
            display: inline-block;
            padding: 15px 30px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin: 10px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<header>
    <h1>Job Portal</h1>
</header>

<!-- Navigation Bar -->
<nav>
    <a href="home">Home</a>
    <a href="viewJobs">View All Jobs</a>
    <a href="addJob">Post a Job</a>
    <a href="search">Search Jobs</a>
</nav>

<!-- Content Section -->
<div class="content-section">
    <h2>Deleted Successfully ! !</h2>
</div>

</body>
</html>
