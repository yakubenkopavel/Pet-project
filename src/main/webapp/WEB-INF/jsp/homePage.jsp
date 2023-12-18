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
    <header class="hero">
        <div class="header">
            <h1 class="title">Select the file you wanna analyze</h1>
        </div>
    </header>
    <header class="hero">
        <div class="header-choose-file">
            <form method="post" action="/" id="form-input">
                <div class="btn-choose-file">
                <span class="backdrop">
                    <span class="action"></span>
                </span>
                    <label for="file-downloader" class="text">Choose file</label>
                    <input type="file" id="file-downloader" name="file-downloader" class="file"/>
                    <span class="icon">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor">
                        <!-- Tray -->
                        <path stroke-linecap="round" stroke-linejoin="round" d="M2.25 13.5h3.86a2.25 2.25 0 012.012 1.244l.256.512a2.25 2.25 0 002.013 1.244h3.218a2.25 2.25 0 002.013-1.244l.256-.512a2.25 2.25 0 012.013-1.244h3.859m-19.5.338V18a2.25 2.25 0 002.25 2.25h15A2.25 2.25 0 0021.75 18v-4.162c0-.224-.034-.447-.1-.661L19.24 5.338a2.25 2.25 0 00-2.15-1.588H6.911a2.25 2.25 0 00-2.15 1.588L2.35 13.177a2.25 2.25 0 00-.1.661z"></path>
                        <!-- Envelope -->
                      <path stroke-linecap="round" stroke-linejoin="round" d="M20.266,4.207c-0.244-0.24-0.494-0.484-0.74-0.732c-0.248-0.246-0.492-0.496-0.732-0.74 C17.082,0.988,16.063,0,15,0H7C4.795,0,3,1.795,3,4v18c0,2.205,1.795,4,4,4h12c2.205,0,4-1.795,4-4V8 C23,6.938,22.012,5.918,20.266,4.207z M21,22c0,1.104-0.896,2-2,2H7c-1.104,0-2-0.896-2-2V4c0-1.104,0.896-2,2-2l7.289-0.004 C15.01,2.18,15,3.066,15,3.953V7c0,0.551,0.449,1,1,1h3c0.998,0,2,0.005,2,1V22z"></path>
                    </svg>
                </span>
                </div>
                <button type="submit" id="submit"></button>
            </form>
            <div class="output">
                <span id="messages" class="messages"></span>
            </div>
        </div>
    </header>
</div>
<script src="js/homePage.js"></script>
</body>
</html>