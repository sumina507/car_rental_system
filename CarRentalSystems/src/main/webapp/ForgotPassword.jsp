<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="navbar.jsp" %>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
    <style>
        body {
background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHzow07yYn1fHYSudHdnRY51gJ3gvy3_K3jA&s');
            background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the background image */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .forgot-password-container {
            background-color: rgba(6, 8, 37, 0.5);/* Slightly transparent white */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }
        .forgot-password-container h2 {
            margin-bottom: 20px;
            color: white;
        }
        .forgot-password-container label {
            display: block;
            margin-bottom: 10px;
            color: white;
        }
        .forgot-password-container input[type="text"],
        .forgot-password-container input[type="email"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }
        .forgot-password-container button {
            background-color: #ff3b30; /* Orange color */
            border: none;
            color: white;
            padding: 12px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        .forgot-password-container button:hover {
            background-color: #BD0000; /* Darker orange on hover */
        }
        .forgot-password-container a {
            color: black;
            text-decoration: none;
        }
        .forgot-password-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="forgot-password-container">
    <h2>Forgot Password</h2>
    <form>
        <label for="email">Enter your registered email address:</label>
        <input type="email" id="email" placeholder="Email Address" required>
        <button type="submit">Send Reset Link</button>
        <p><a href="Login.jsp">Remembered your password? Log in</a></p>
    </form>
</div>

</body>
</html>
