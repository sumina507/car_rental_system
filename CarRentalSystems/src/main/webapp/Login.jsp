
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="navbar.jsp" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Sumz Car Rental</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #060825;
            color: white;
        }

        .bg {
            background-image: url('https://images.hindustantimes.com/auto/img/2024/03/13/1600x900/2024_BYD_Atto_3_1710334465886_1710334468613.jpg');
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed; /* Parallax effect */
            filter: brightness(0.5);
        }

        .login-container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 40%;
            padding: 20px;
            background-color: rgba(6, 8, 37, 0.5); /* More transparency */
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #ffffff;
        }

       .login-container input[type="email"],
.login-container input[type="password"] {
    width: 100%; /* Ensures both fields take the full width */
    padding: 8px; /* Padding for user comfort */
    margin: 10px 0 20px 0; /* Adds space between inputs */
    display: inline-block;
    border: none;
    background: #f1f1f1;
    border-radius: 5px;
    box-sizing: border-box; /* Ensures padding and border are included in width */
}


        .login-container button {
            width: 100%;
            padding: 10px;
            background-color: #ff3b30;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .login-container a {
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

<div class="login-container">
    <h2>Login</h2>
    <form action="LoginController" method="post">
        <input type="email" placeholder="email"  name="email"required>
        <input type="password" placeholder="Password" name="password"required>
        <button type="submit">Login</button>
        <a href="ForgotPassword.jsp">Forgot password?</a>
        <a href="signup.jsp">Don't have an account? Sign up</a>
    </form>
</div>

</body>
 <%@ include file="Footer.jsp" %>
</html>
