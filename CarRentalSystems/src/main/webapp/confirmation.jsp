<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Confirmation</title>
</head>
<body>
    <h1>Booking Confirmation</h1>
    <p>Your booking has been successfully completed!</p>
    <p><strong>Booking ID:</strong> ${bookingId}</p>
    <p><strong>Car ID:</strong> ${carId}</p>
    <p><strong>Pick-Up Location:</strong> ${pickUpLocation}</p>
    <p><strong>Pick-Up Date:</strong> ${pickUpDate}</p>
    <p><strong>Drop-Off Location:</strong> ${dropOffLocation}</p>
    <p><strong>Drop-Off Date:</strong> ${dropDate}</p>
    <a href="homepage.jsp">Go Back to Home</a>
</body>
</html>
