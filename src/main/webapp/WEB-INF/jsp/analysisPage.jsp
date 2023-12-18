<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Analyst</title>
    <link rel="stylesheet" href="css/homePage.css">
    <link href='https://fonts.googleapis.com/css?family=Noto Sans' rel='stylesheet'>
</head>
<body class="body-style">
<div class="container">
    <div class="navbar">
        <header class="navbar-interactive">
            <div class="branding">
                <img alt="image" src="images/logo.svg" class="logo" />
                <span class="company">Analyst</span>
            </div>
            <div class="items">
                <div class="links">
                    <a href="<c:url value="/"/>">
                        <span class="nav-link">Home</span>
                    </a>
                    <a href="<c:url value="/data"/>">
                        <span class="nav-link">Data</span>
                    </a>
                    <a href="<c:url value="/analysis"/>">
                        <span class="nav-link">Analysis</span>
                    </a>
                    <a href="<c:url value="/variogram"/>">
                        <span class="nav-link">Variogram</span>
                    </a>
                </div>
                <button type="submit" id="submitButton" class="start-button button">
                    <span class="text04">Start analysis</span>
                </button>
            </div>
        </header>
    </div>
</div>
<script src="js/homePage.js"></script>
</body>
</html>