<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="navbar.jsp"%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us | Sumz Car Rental System</title>

</head>
<body>
    <style>
    body {
        
        background-color: #060825;
        color: white;
        margin: 0;
        padding-top: 80px;
    }

    header {
        background-color:white;
        padding: 15px 0;
    }

    nav ul {
        list-style: none;
        padding: 0;
        text-align: center;
        margin: 0;
    }

    nav ul li {
        display: inline;
        margin: 0 15px;
    }

    nav ul li a {
        color: #fff;
        text-decoration: none;
        font-size: 18px;
    }

    nav ul li a.active {
        font-weight: bold;
        border-bottom: 2px solid #ff6f61;
    }

    main {
        padding: 20px;
    }

    .about {
        max-width: 1200px;
        margin: 0 auto;
        display: flex;
        align-items: center;
        flex-wrap: wrap;
    }
.about h1{
  text-align:center;
}
    .image-container {
        flex: 1;
        padding: 10px;
    }

    .image-container img {
        width: 100%;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .text-container {
        flex: 2;
        padding: 20px;
        background-image: url('https://images.unsplash.com/photo-1563720223801-cd3251bf7185?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        color: #fff;
        position: relative;
    }

    .text-container::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
       background-color: #060825;
        border-radius: 10px;
        z-index: 1;
    }

    .text-container h2,
    .text-container p,
    .text-container ul {
        position: relative;
        z-index: 2;
    }

    .text-container h2 {
        color: #ff6f61;
    }

    footer {
        background-color: #000;
        color: #fff;
        text-align: center;
        padding: 15px;
        position: fixed;
        width: 100%;
        bottom: 0;
    }
    .about h1 {
    text-align: center;
}
    
    </style>

    <main>
        <section class="about">
            <h1>About Us</h1>
            <div class="about-content">
               
                <div class="text-container">
                    <h2>Welcome to Sumz Car Rental System</h2>
                    <p>At Sumz, we are committed to providing a seamless and enjoyable car rental experience. Our system offers a wide range of vehicles to suit your needs, whether you’re planning a weekend getaway or a long-term rental. We pride ourselves on our user-friendly platform and dedicated customer service. Our mission is to make car rental easy and accessible for everyone. With a focus on reliability and convenience, we ensure that our customers have access to well-maintained vehicles and exceptional service.</p>
                    
                    <h2>Our Journey</h2>
                    <p>Since our inception, Sumz Car Rental System has been driven by a passion for excellence and a commitment to innovation. We began as a small startup with a simple idea: to make car rentals more convenient and affordable. Over the years, we have grown into a trusted name in the industry, known for our reliable service and customer-first approach. Our growth has been fueled by a relentless pursuit of customer satisfaction. We continuously update our fleet, enhance our platform, and expand our services to meet the evolving needs of our clients. Our journey is a testament to our dedication to providing the best possible car rental experience.</p>
                    
                    <h2>Why Choose Us?</h2>
                    <p>We understand that our customers have many options when it comes to car rentals. That's why we strive to stand out through our unwavering commitment to quality and service. We offer a wide selection of vehicles, from compact cars to luxury SUVs, ensuring we have a diverse range of options to suit any occasion. Our easy booking process, user-friendly platform, and competitive pricing make it simple and cost-effective for customers to book a vehicle. Additionally, our 24/7 customer support team is always ready to assist with any inquiries, ensuring our customers receive the best service possible.</p>
                    
                    <h2>Our Team</h2>
                    <p>Our team is made up of passionate professionals who are dedicated to delivering the best car rental experience. From tech enthusiasts who maintain our system to customer service representatives who assist you, each member of our team is committed to your satisfaction. We believe in fostering a culture of collaboration and innovation. Our team members are encouraged to bring fresh ideas to the table, ensuring that we stay ahead of the curve and continue to provide top-notch service to our customers.</p>
                    
                    <h2>Looking Ahead</h2>
                    <p>As we look to the future, we remain focused on our mission to provide the best car rental experience possible. We are excited about the opportunities that lie ahead and are committed to expanding our services, improving our platform, and continuing to exceed our customers' expectations. Thank you for choosing Sumz Car Rental System. We look forward to serving you and making your car rental experience a breeze.</p>
                </div>
            </div>
        </section>
    </main>

</body>

</html>
