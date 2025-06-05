<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rental</title>
    <style>
        body {
            background-color: #060825;
            margin: 0;
            padding: 0;
            color: white;
            font-family: Arial, sans-serif;
        }

        .navbar-custom {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            background-color: #060825; /
        }

        .navbar-custom .navbar-brand img {
            height: 50px; /* Adjust height as needed */
            background-color: #060825;
        }

        .navbar-custom .navbar-brand {
            color: white; 
        }

        .navbar-custom .navbar-brand:hover {
            color: #ff6f61; 
        }

        .navbar-custom .navbar-nav .nav-link {
            color: white;
        }

        .navbar-custom .navbar-nav .nav-link:hover {
            color: #ff6f61;
        }
    </style>
</head>
<body>
<% 
String uname=(String)session.getAttribute("name");

%>
    <nav class="navbar navbar-expand-lg navbar-custom">
        <a class="navbar-brand" href="#">
<img src="Image/Logo.webp" alt="Logo" class="img-fluid" style="height: 50px;">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="Controller?action=home">Home</a>
                </li>
               
                
                
               <% if(uname!=null){ %>
                 <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" 
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Car
                    </a>
                    
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="Controller?action=newCar">Add Car</a>
                    <a class="dropdown-item" href="Controller?action=viewDetails">View Details</a>
                    <a class="dropdown-item" href="Controller?action=carDetails">Car Details</a>
                    </div>
                    </li>
                    <%} %>
                
                <li class="nav-item">
                    <a class="nav-link" href="About.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <% if(uname==null){ %>
                    <a class="nav-link" href="Login.jsp">Login</a>
                    <%}else{ %>
                      <a class="nav-link" href="Controller?action=logout">Logout</a>
                      <%} %>
                    
                    
                    
                </li>
                
                <li class="nav-item">
  <p class="nav-link">Hello,<%=uname!=null?uname:"user" %></p>
                </li>
            </ul>
        </div>
    </nav>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
</body>
</html>
