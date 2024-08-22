<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Portal - Job Details</title>
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
        .job-details {
            list-style-type: none;
            padding: 0;
        }
        .job-details li {
            padding: 10px 0;
            border-bottom: 1px solid #ddd;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
        .btn {
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
    <a href="addJob">Post Another Job</a>
    <a href="search">Search Jobs</a>
</nav>

<!-- Content Section -->
<div class="content-section">
    <h2>Job Posted Successfully</h2>
    <p>The following details have been submitted for the job post:</p>

    <ul class="job-details">
        <li><strong>Role:</strong> ${job.role}</li>
        <li><strong>Company Name:</strong> ${job.companyName}</li>
        <li><strong>Location:</strong> ${job.location}</li>
        <li><strong>Job Description:</strong> ${job.jobDescription}</li>
        <li><strong>Minimum Requirement:</strong> ${job.minRequirements}</li>
    </ul>

    <div class="button-container">
        <a href="viewJobs" class="btn">View All Jobs</a>
    </div>
</div>

</body>
</html>
<%--&lt;%&ndash;-------------------------------------------------------------%>

<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Job Portal - Job Details</title>--%>
<%--    <link rel="stylesheet" type="text/css" href="../style.css">&ndash;%&gt;--%>
<%--</head>--%>
<%--<body>--%>

<%--<header>--%>
<%--    <h1>Job Portal</h1>--%>
<%--</header>--%>

<%--<!-- Content Section -->--%>
<%--<div class="content-section">--%>
<%--    <h2>Job Posted Successfully</h2>--%>
<%--    <p>The following details have been submitted for the job post:</p>--%>

<%--    <ul class="job-details">--%>
<%--        <li><strong>Role:</strong> ${job.role}</li>--%>
<%--        <li><strong>Company Name:</strong> ${job.companyName}</li>--%>
<%--        <li><strong>Job Description:</strong> ${job.jobDescription}</li>--%>
<%--        <li><strong>Minimum Requirement:</strong> ${job.minRequirements}</li>--%>
<%--    </ul>--%>

<%--    <div class="button-container">--%>
<%--        <a href="viewJobs.jsp" class="btn">View All Jobs</a>--%>
<%--    </div>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>
