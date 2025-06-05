<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sumz Car Rental System</title>
    <style type="text/css">
   
.footer-section {
    background-color: #060825; 
    color: white;
    padding: 40px 0;
    text-align: center;
}

.footer-content {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    max-width: 1200px;
    margin: 0 auto;
}

.footer-logo img {
    width: 120px;
    margin-bottom: 10px;
}

.social-icons a {
    margin: 0 10px;
    font-size: 20px;
    color: white;
    text-decoration: none;
}

.newsletter form {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.newsletter input {
    padding: 10px;
    margin: 5px;
    border: none;
    border-radius: 5px;
    width: 100%; 
    box-sizing: border-box; 
}

.newsletter button {
    background-color: #ff6f61;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%; 
    box-sizing: border-box; 
}


.footer-nav ul {
    list-style: none;
    padding: 0;
}

.footer-nav ul li {
    margin: 5px 0;
}

.footer-nav ul li a {
    color: white;
    text-decoration: none;
}

.footer-nav ul li a:hover {
    text-decoration: underline;
}

.contact-info p {
    margin: 5px 0;
}

.footer-bottom {
    margin-top: 30px;
    font-size: 14px;
}

@media (max-width: 768px) {
    .footer-content {
        flex-direction: column;
        align-items: center;
    }

    .footer-logo, .newsletter, .footer-nav, .contact-info {
        margin-bottom: 20px;
    }
}
    
    </style>
</head>
<body>


    <footer class="footer-section">
        <div class="container">
            <div class="footer-content">
                <!-- Logo and Social Icons -->
                <div class="footer-logo">
                    <img src="Image/Logo.webp" alt="Sumz Car Rental Logo">
                    <div class="social-icons">
                        <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                        <a href="https://x.com/?lang=en#"><i class="fa fa-twitter"></i></a>
                        <a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a>
                        <a href="https://mail.google.com/mail/u/0/?hl=en"><i class="fa fa-envelope"></i></a>
                    </div>
                </div>

                <div class="newsletter">
                    <h3>Hot Offers</h3>
                    <p>Sign up for big savings!</p>
                    <form action="#">
                        <input type="text" placeholder="Your Name" required>
                        <input type="email" placeholder="Email" required>
                        <button type="submit">Join</button>
                    </form>
                </div>

                <div class="footer-nav">
                    <h3>Navigation</h3>
                    <ul>
                        <li><a href="homepage.jsp">Home Page</a></li>
                        <li><a href="#">Vehicles</a></li>
                        <li><a href="TermsAndCondition.jsp">Terms & Conditions</a></li>
                        <li><a href="PrivacyPolicy.jsp">Privacy Policy</a></li>
                    </ul>
                </div>

                <!-- Contact Information -->
                <div class="contact-info">
                    <h3>Contact Us</h3>
                    <p>Sumz Car Rental, Banepa-9, Kavre</p>
                    <p>Tel: +977 123456789</p>
                    <p>Email: support@sumzcarrental.com</p>
                    <p>Business Hours: Sun - Fri, 9 AM - 6 PM</p>
                </div>
            </div>

            <!-- Copyright Section -->
            <div class="footer-bottom">
                <p>Copyright &copy; 2024 Sumz Car Rental. All rights reserved.</p>
            </div>
        </div>
    </footer>

</body>
</html>
