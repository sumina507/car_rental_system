<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Rental</title>
<%@ include file="navbar.jsp" %>
   <style>
    
        .parallax {
            background-image: url('https://wallpapers.com/images/hd/byd-1920-x-1080-wallpaper-90m0dfbhwyzjox1d.jpg'); /* Replace with your image URL */
            height: 100vh;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
            color: #fff;
            text-align: center;
        }
        footer{
        text-align:center
        }

        .parallax h1 {
            padding-top: 30%;
            font-size: 4em;
            font-weight: bold;
        }

        .parallax form {
            margin-top: 30px;
        }

        .search-bar input[type="search"] {
            width: 300px;
            padding: 10px;
            border-radius: 30px;
            border: none;
            outline: none;
        }

        .search-bar button {
            padding: 10px 20px;
            border-radius: 30px;
            background-color: #ff6f61;
            border: none;
            color: white;
        }

        .search-bar button:hover {
            background-color: #ff3b30;
        }

        .hero-section {
            background: url('https://source.unsplash.com/1600x900/?car') no-repeat center center;
            background-size: cover;
            height: 400px;
            text-align: center;
            padding: 80px 0;
            border-bottom: 10px solid #ff6f61;
        }
        .hero-section h1 {
            font-size: 3em;
            font-weight: bold;
            color: #000; /* Change text color to black */
        }
        .search-bar {
            margin-top: 20px;
        }
        .car-card {
            background-color: #060825 !important; /* Apply dark blue to all cards */
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            overflow: hidden;
            margin-bottom: 20px;
            transition: transform 0.2s;
        }
        .car-card:hover {
            transform: scale(1.05);
        }
        .card-img-top {
            border-bottom: 5px solid #ff6f61;
            height: 200px;
            object-fit: cover; 
            width: 100%;
        }
        .card-body {
            background-color: #060825 !important; /* Apply dark blue to the body */
            text-align: center;
        }
        .btn-primary {
            background-color: #00274d; 
            border: none;
            color: white; 
        }
        .btn-primary:hover {
            background-color: #001f3d; 
        }
    </style>
</head>
<body>
<!-- Parallax Section -->
    <section class="parallax">
        <h1><b>Find Your Dream Car!</b></h1>
        <form class="form-inline justify-content-center search-bar">
            <input class="form-control mr-sm-2" type="search" placeholder="Search for cars" aria-label="Search">
            <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
        </form>
    </section>

<section class="container mt-5">
    <h2 class="text-center mb-4">Featured Cars</h2>
    <div class="row">
        <c:forEach var="car" items="${carList}">
            <div class="col-md-4">
                <div class="car-card">
                    <img src="data:image/jpeg;base64,${car.imageUrl}" class="card-img-top" alt="${car.carModel}">
                    <div class="card-body">
                        <h5 class="card-title">${car.carModel}</h5>
                        <p class="card-text">Rs ${car.pricePerDay} per day</p>
                        <form action="BookCar" method="POST">
                            <!-- Hidden fields to pass car details -->
                            <input type="hidden" name="carModel" value="${car.carModel}">
                            <input type="hidden" name="price" value="${car.pricePerDay}">
                      <a href="BookNow.jsp">Book Now</a>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>

   <%@ include file="Footer.jsp" %>
</html>
