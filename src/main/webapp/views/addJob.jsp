<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Post a Job</title>
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
        .myJob-posting-section {
            padding: 20px;
            background-color: white;
            margin: 20px;
            border-radius: 5px;
        }
        .myJob-posting-section label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }
        .myJob-posting-section input[type="text"], .myJob-posting-section textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .myJob-posting-section textarea {
            height: 100px;
            resize: vertical;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
        .button-container input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        .button-container input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<header>
    <h1>Job Portal</h1>
</header>

<nav>
    <a href="home">Home</a>
    <a href="viewJobs">View All Jobs</a>
    <a href="addJob">Post Job</a>
    <a href="searchJobs">Search Jobs</a>
</nav>

<div class="myJob-posting-section">
    <h2>Post a Job</h2>
    <form action="submitted" method="post">
        <label for="role">Job Role:</label>
        <input type="text" name="role" id="role" placeholder="Enter the job role..." required />

        <label for="companyName">Company Name:</label>
        <input type="text" name="companyName" id="companyName" placeholder="Enter the company name..." required />

        <label for="location">Location:</label>
        <input type="text" name="location" id="location" placeholder="Enter the location..." required></input>

        <label for="jobDescription">Job Description:</label>
        <textarea name="jobDescription" id="jobDescription" placeholder="Enter the job description..." required></textarea>

        <label for="minRequirements">Minimum Requirements:</label>
        <textarea name="minRequirements" id="minRequirements" placeholder="Enter the minimum requirements..." required></textarea>

        <div class="button-container">
            <input type="submit" value="Post Job" />
        </div>
    </form>
</div>

</body>
</html>
