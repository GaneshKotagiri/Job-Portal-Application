<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Job Search Results</title>--%>
<%--    <link rel="stylesheet" type="text/css" href="../style.css">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            background-color: #f4f4f4;--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--        }--%>
<%--        header {--%>
<%--            background-color: #007bff;--%>
<%--            color: white;--%>
<%--            padding: 10px 20px;--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        nav {--%>
<%--            background-color: #333;--%>
<%--            overflow: hidden;--%>
<%--        }--%>
<%--        nav a {--%>
<%--            float: left;--%>
<%--            display: block;--%>
<%--            color: white;--%>
<%--            text-align: center;--%>
<%--            padding: 14px 20px;--%>
<%--            text-decoration: none;--%>
<%--        }--%>
<%--        nav a:hover {--%>
<%--            background-color: #575757;--%>
<%--            color: white;--%>
<%--        }--%>
<%--        .myJob-posting-section {--%>
<%--            padding: 20px;--%>
<%--            background-color: white;--%>
<%--            margin: 20px;--%>
<%--            border-radius: 5px;--%>
<%--        }--%>
<%--        .myJob-posting-section label {--%>
<%--            display: block;--%>
<%--            margin: 10px 0 5px;--%>
<%--            font-weight: bold;--%>
<%--        }--%>
<%--        .myJob-posting-section input[type="text"], .myJob-posting-section textarea {--%>
<%--            width: 100%;--%>
<%--            padding: 10px;--%>
<%--            margin-bottom: 15px;--%>
<%--            border-radius: 5px;--%>
<%--            border: 1px solid #ccc;--%>
<%--        }--%>
<%--        .myJob-posting-section textarea {--%>
<%--            height: 100px;--%>
<%--            resize: vertical;--%>
<%--        }--%>
<%--        .button-container {--%>
<%--            text-align: center;--%>
<%--            margin-top: 20px;--%>
<%--        }--%>
<%--        .button-container input[type="submit"] {--%>
<%--            padding: 10px 20px;--%>
<%--            background-color: #007bff;--%>
<%--            color: white;--%>
<%--            border: none;--%>
<%--            cursor: pointer;--%>
<%--            border-radius: 5px;--%>
<%--        }--%>
<%--        .button-container input[type="submit"]:hover {--%>
<%--            background-color: #0056b3;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Job Search Results</h1>--%>

<%--<!-- Search Form -->--%>
<%--<form action="searchHome" method="get">--%>
<%--    <label for="role">Search by Role:</label>--%>
<%--    <input type="text" id="role" name="role" placeholder="Enter job role..." value="${role}">--%>
<%--    <input type="submit" value="Search">--%>
<%--</form>--%>

<%--<!-- If there are job results, display them -->--%>
<%--<c:if test="${not empty jobPost}">--%>
<%--    <table>--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>Role</th>--%>
<%--            <th>Company Name</th>--%>
<%--            <th>Location</th>--%>
<%--            <th>Job Description</th>--%>
<%--            <th>Minimum Requirements</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <!-- Loop through the jobPost list and display each job -->--%>
<%--        <c:forEach var="job" items="${jobPost}">--%>
<%--            <tr>--%>
<%--                <td>${job.role}</td>--%>
<%--                <td>${job.companyName}</td>--%>
<%--                <td>${job.location}</td>--%>
<%--                <td>${job.jobDescription}</td>--%>
<%--                <td>${job.minRequirements}</td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--</c:if>--%>

<%--<!-- If no jobs are found, display a message -->--%>
<%--<c:if test="${empty jobPost}">--%>
<%--    <p>No jobs found for the role: ${role}</p>--%>
<%--</c:if>--%>
<%--</body>--%>
<%--</html>--%>
<%--------------------------------------------------------------------------------------------%>
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
