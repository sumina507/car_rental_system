

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
    <%@ include file="navbar.jsp" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Sumz Car Rental</title>
    <style>
        body {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
            color: white;
            overflow-x: hidden;
        }

        .bg {
            background-image: url('https://w0.peakpx.com/wallpaper/363/370/HD-wallpaper-modified-car-yellow-car-with-smoke-background-yellow-car-smoke-background-sports-car.jpg');
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            filter: brightness(0.5);
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: -1;
        }

        .content-wrapper {
            padding-top: 80px;
            margin-bottom: 100px;
        }

        .signup-container {
            position: relative;
            top: 10%;
            left: 50%;
            transform: translate(-50%, 0);
            width: 40%;
            padding: 20px;
            background-color: rgba(6, 8, 37, 0.5);
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
        }

        .signup-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #ffffff;
        }

        .signup-container input[type="text"],
        .signup-container input[type="password"],
        .signup-container input[type="email"],
        .signup-container input[type="tel"],
        .signup-container select,
        .signup-container input[type="submit"] {
            width: 100%;
            padding: 8px;
            margin: 10px 0 20px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
            border-radius: 5px;
        }

        .signup-container input[type="submit"] {
            background-color: #ff3b30;
            color: white;
            cursor: pointer;
        }

        .signup-container input[type="submit"]:hover {
            background-color: #e63529;
        }

        .signup-container a {
            color: #ffffff;
            text-decoration: none;
            display: block;
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>
<body>

<div class="bg"></div>

<div class="content-wrapper">
    <div class="signup-container">
        <h2>Sign Up</h2>
        <form action="CarController" method="post">
            <input type="hidden" name="id" value="${sign.id}">
            <input type="text" name="name" placeholder="Full Name" value="${sign.name}" required>
            <input type="text" name="address" placeholder="Address" value="${sign.address}" required>
            <input type="tel" name="contactNumber" placeholder="Contact Number" value="${sign.contactNumber}" required>
            <select name="gender" required>
                <option value="Male" ${sign.gender=='Male'?'selected':''}>Male</option>
                <option value="Female" ${sign.gender=='Female'?'selected':''}>Female</option>
                <option value="Other" ${sign.gender=='Other'?'selected':''}>Other</option>
            </select>
            <input type="email" name="email" placeholder="Email Address" value="${sign.email}" required>
            <input type="password" name="password" placeholder="Password" value="${sign.password}" required>
            <input type="password" name="confirmPassword" placeholder="Confirm Password" value="${sign.confirmPassword}" required>
            <input type="submit" value="Submit">
            <a href="Login.jsp">Already have an account? Log in</a>
        </form>
    </div>
</div>

</body>
 <%@ include file="Footer.jsp" %>
</html>
