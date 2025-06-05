<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Rental Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('forest-road.jpg');
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            width: 500px;
        }
        .form-container h2 {
            color: green;
            text-align:center;
        }
        .form-container label {
            font-weight: bold;
            display: block;
            margin: 10px 0 5px;
        }
        .form-container input,
        .form-container select {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-container input[type="submit"] {
            background-color: green;
            color: white;
            border: none;
            cursor: pointer;
        }
        .form-container input[type="submit"]:hover {
            background-color: darkgreen;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Rent a Car</h2>
    <form action="BookingController" method="post">
        <input type="hidden" name="carId" value="${bookNow.carId}">
        <label for="pickup">Pick Up Location</label>
        <input type="text" id="pickup" name="pickup" placeholder="Enter pickup location" required>
        <label for="pickupDate">Pick Up Date</label>
        <input type="datetime-local" id="pickupDate" name="pickupDate" required>
        <label for="dropoff">Drop Off Location</label>
        <input type="text" id="dropoff" name="dropoff" placeholder="Enter drop off location" required>
        <label for="dropDate">Drop Date</label>
        <input type="datetime-local" id="dropDate" name="dropDate" required>
        <input type="submit" value="Book Now">
    </form>
</div>

</body>
</html>
