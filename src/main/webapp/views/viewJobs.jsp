<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Portal - View Jobs</title>
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
        }
        .content-section h2 {
            margin-top: 0;
        }
        .job-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            grid-gap: 20px;
        }
        .job-block {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .job-block h3 {
            margin-top: 0;
            color: #007bff;
        }
        .job-block p {
            margin: 10px 0;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
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
    <h2>Available Job Listings</h2>

    <div class="job-grid">
        <c:forEach var="job" items="${jobPost}">
            <div class="job-block">
                <h3>${job.role}</h3>
<%--                <p><strong>Id:</strong> ${job.id}</p>--%>
                <p><strong>Company Name:</strong> ${job.companyName}</p>
                <p><strong>Location:</strong> ${job.location}</p>
                <p><strong>Description:</strong> ${job.jobDescription}</p>
                <p><strong>Minimum Requirement:</strong> ${job.minRequirements}</p>
                <a href="applied" class="btn">Apply Now</a>
            </div>
        </c:forEach>
    </div>

</div>

</body>
</html>
