<%---------------------------------------------------------------------------------------%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>myJob Portal - Home</title>--%>
<%--    <!-- Link to External CSS -->--%>
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
<%--        .search-section {--%>
<%--            padding: 20px;--%>
<%--            background-color: white;--%>
<%--            margin: 20px;--%>
<%--            border-radius: 5px;--%>
<%--        }--%>
<%--        .search-section form {--%>
<%--            display: flex;--%>
<%--            justify-content: space-between;--%>
<%--        }--%>
<%--        .search-section input[type="text"] {--%>
<%--            width: 48%;--%>
<%--            padding: 10px;--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>
<%--        .filter-section {--%>
<%--            padding: 20px;--%>
<%--            background-color: white;--%>
<%--            margin: 20px;--%>
<%--            border-radius: 5px;--%>
<%--            max-height: 150px;--%>
<%--            overflow-y: auto;--%>
<%--        }--%>
<%--        .filter-section label, .filter-section input {--%>
<%--            margin-bottom: 10px;--%>
<%--            display: block;--%>
<%--        }--%>
<%--        .filter-section input[type="range"] {--%>
<%--            width: 100%;--%>
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
<%--        .dropdown-section {--%>
<%--            margin: 20px;--%>
<%--        }--%>
<%--        .dropdown-button {--%>
<%--            background-color: #007bff;--%>
<%--            color: white;--%>
<%--            padding: 10px;--%>
<%--            border: none;--%>
<%--            cursor: pointer;--%>
<%--            width: 100%;--%>
<%--            border-radius: 5px;--%>
<%--            text-align: left;--%>
<%--        }--%>
<%--        .dropdown-content {--%>
<%--            display: none;--%>
<%--            position: absolute;--%>
<%--            background-color: white;--%>
<%--            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);--%>
<%--            z-index: 1;--%>
<%--            width: 100%;--%>
<%--            border-radius: 5px;--%>
<%--            padding: 20px;--%>
<%--        }--%>
<%--        .dropdown-section:hover .dropdown-content {--%>
<%--            display: block;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<header>--%>
<%--    <h1>myJob Portal</h1>--%>
<%--</header>--%>

<%--<nav>--%>
<%--    <a href="home.jsp">Home</a>--%>
<%--    <a href="viewJobs.jsp">View All Jobs</a>--%>
<%--    <a href="addJob.jsp">Post myJob</a>--%>
<%--</nav>--%>

<%--<div class="search-section">--%>
<%--    <h2>Search Jobs</h2>--%>
<%--    <form action="searchResults.jsp" method="get">--%>
<%--        <input type="text" name="keyword" placeholder="Enter keyword..." required />--%>
<%--        <input type="text" name="location" placeholder="Enter location..." required />--%>
<%--        <div class="button-container">--%>
<%--            <input type="submit" value="Search" />--%>
<%--        </div>--%>
<%--    </form>--%>
<%--</div>--%>

<%--<div class="dropdown-section">--%>
<%--    <button class="dropdown-button">Filter Jobs</button>--%>
<%--    <div class="dropdown-content">--%>
<%--        <form action="filterResults.jsp" method="get">--%>
<%--            <label for="date">Date Posted:</label>--%>
<%--            <input type="range" name="date" id="date" min="0" max="30" step="1" />--%>
<%--            <label for="distance">Distance (in miles):</label>--%>
<%--            <input type="range" name="distance" id="distance" min="0" max="100" step="5" />--%>
<%--            <label for="experience">Experience (in years):</label>--%>
<%--            <input type="range" name="experience" id="experience" min="0" max="20" step="1" />--%>
<%--            <div class="button-container">--%>
<%--                <input type="submit" value="Apply Filters" />--%>
<%--            </div>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>
<%--------------------------------------------------------------------------------------------------------%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Job Portal - Home</title>--%>
<%--    <!-- Link to External CSS -->--%>
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
<%--        .search-section {--%>
<%--            padding: 20px;--%>
<%--            background-color: white;--%>
<%--            margin: 20px;--%>
<%--            border-radius: 5px;--%>
<%--        }--%>
<%--        .search-section form {--%>
<%--            display: flex;--%>
<%--            justify-content: space-between;--%>
<%--            flex-wrap: wrap;--%>
<%--        }--%>
<%--        .search-section input[type="text"] {--%>
<%--            width: 48%;--%>
<%--            padding: 10px;--%>
<%--            margin-bottom: 10px;--%>
<%--            box-sizing: border-box;--%>
<%--        }--%>
<%--        .filter-section {--%>
<%--            padding: 20px;--%>
<%--            background-color: white;--%>
<%--            margin-top: 10px;--%>
<%--            border-radius: 5px;--%>
<%--            width: 48%;--%>
<%--            box-sizing: border-box;--%>
<%--        }--%>
<%--        .filter-section label, .filter-section input {--%>
<%--            margin-bottom: 10px;--%>
<%--            display: block;--%>
<%--        }--%>
<%--        .filter-section input[type="range"] {--%>
<%--            width: 100%;--%>
<%--        }--%>
<%--        .button-container {--%>
<%--            text-align: center;--%>
<%--            margin-top: 20px;--%>
<%--            width: 100%;--%>
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
<%--<header>--%>
<%--    <h1>Job Portal</h1>--%>
<%--</header>--%>

<%--<nav>--%>
<%--    <a href="home">Home</a>--%>
<%--    <a href="viewJobs">View All Jobs</a>--%>
<%--    <a href="addJob">Post Job</a>--%>
<%--</nav>--%>

<%--<div class="search-section">--%>
<%--    <h2>Search Jobs</h2>--%>
<%--    <form action="searchResults.jsp" method="get">--%>
<%--        <!-- Search bars side by side -->--%>
<%--        <input type="text" name="keyword" placeholder="Enter keyword..." required />--%>
<%--        <input type="text" name="location" placeholder="Enter location..." required />--%>

<%--        <!-- Filter section below the search bars -->--%>
<%--        <div class="filter-section">--%>
<%--            <h2>Filter Jobs</h2>--%>
<%--            <label for="date">Date Posted:</label>--%>
<%--            <input type="range" name="date" id="date" min="0" max="30" step="1" />--%>
<%--            <label for="distance">Distance (in miles):</label>--%>
<%--            <input type="range" name="distance" id="distance" min="0" max="100" step="5" />--%>
<%--            <label for="experience">Experience (in years):</label>--%>
<%--            <input type="range" name="experience" id="experience" min="0" max="20" step="1" />--%>
<%--        </div>--%>

<%--        <!-- Search button centered below everything -->--%>
<%--        <div class="button-container">--%>
<%--            <input type="submit" value="Search" />--%>
<%--        </div>--%>
<%--    </form>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>

<%--------------------------------------------------------------------------------------------------------------------%>
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
    <a href="searchJobs">Search Jobs</a>
</nav>

<!-- Content Section -->
<div class="content-section">
    <h2>Welcome to My Job Portal!!</h2>
    <p>Find the latest job openings, post new jobs, and explore your career opportunities.</p>

    <div class="btn-container">
        <a href="viewJobs" class="btn">View Jobs</a>
        <a href="addJob" class="btn">Post a Job</a>
        <a href="searchJobs" class="btn">Search Jobs</a>
    </div>
</div>

</body>
</html>
