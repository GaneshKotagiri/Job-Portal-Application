
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results - myJob Portal</title>
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
        .results-section {
            padding: 20px;
            background-color: white;
            margin: 20px;
            border-radius: 5px;
        }
        .results-section h2 {
            margin-top: 0;
        }
        .job-item {
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
        }
        .job-item:last-child {
            border-bottom: none;
        }
        .job-item h3 {
            margin: 0;
        }
        .job-item p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
<header>
    <h1>myJob Portal - Search Results</h1>
</header>

<nav>
    <a href="home">Home</a>
    <a href="viewJobs">View All Jobs</a>
    <a href="addJob">Post myJob</a>
    <a href="search">Search Jobs</a>
</nav>

<div class="results-section">
    <h2>Search Results</h2>

    <c:choose>
        <c:when test="${not empty jobPost}">
            <c:forEach var="job" items="${jobPost}">
                <div class="job-item">
                    <h3>${job.role}</h3>
<%--                    <p><strong>Id:</strong> ${job.id}</p>--%>
                    <p><strong>Company:</strong> ${job.companyName}</p>
                    <p><strong>Location:</strong> ${job.location}</p>
                    <p><strong>Description:</strong> ${job.jobDescription}</p>
                    <p><strong>Requirements:</strong> ${job.minRequirements}</p>
                    <a href="applied" class="btn">Apply Now</a>
                </div>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <p>No jobs found matching your criteria.</p>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>
