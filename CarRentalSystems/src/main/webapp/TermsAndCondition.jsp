<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="navbar.jsp" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terms & Conditions - Sumz Car Rental</title>
    <style>/* Basic styling for both pages */

body {
    font-family: Arial, sans-serif;
    background-color: #060825;
    color: white;
    line-height: 1.6;
}

.container {
    width: 80%;
    margin: 20px auto;
    background-color:  #060825;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #ff6f61;
}

h2 {
    margin-top: 20px;
    color:  #ff6f61;
}

p {
    margin: 10px 0;
}

ul {
    list-style-type: disc;
    margin-left: 20px;
}

.terms-container, .privacy-container {
    width: 60%;
    margin: 0 auto;
    padding: 20px;
    background: #060825 ;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.footer-bottom {
    text-align: center;
    margin-top: 20px;
    color: #999;
}
    </style>
</head>
<body>
    <div class="terms-container">
        <h1>Terms & Conditions</h1>

        <h2>Renter's Qualifications</h2>
        <ul>
            <li>Renter must be aged 21+ and possess a valid driver's license.</li>
            <li>All renters (main driver and additional drivers) must provide a valid identification card when picking up the car.</li>
            <li>An International Driving License is required if the renter's license is not in English.</li>
            <li>The main driver must present a credit card in their own name when collecting the car.</li>
        </ul>

        <h2>Acceptable Forms of Payment</h2>
        <p>We accept the following credit cards:</p>
        <ul>
            <li>MasterCard</li>
            <li>Visa</li>
            <li>JCB</li>
            <li>American Express (AMEX)</li>
        </ul>
        <p><strong>Note:</strong> Cash and debit cards are not accepted.</p>

        <h2>Deposit</h2>
        <p>
            A deposit will be held on the credit card during the rental period. 
            The deposit amount depends on the rental car model and type of insurance.
        </p>
        <p>Deposit amounts range from $200 to $1000, depending on the car type and engine size.</p>

        <h2>Insurance Coverage</h2>
        <p>
            Insurance coverage is mandatory for all rentals and is included in the rental agreement. 
            Coverage includes collision damage waiver and theft protection.
        </p>

        <h2>Rental Duration</h2>
        <p>All rentals are subject to a minimum rental period of 24 hours.</p>

        <h2>Cancellation Policy</h2>
        <p>
            Cancellations made 24 hours before the rental start date will receive a full refund. 
            Cancellations made less than 24 hours before the rental start date will be subject to a 50% charge.
        </p>

        <h2>Additional Drivers</h2>
        <p>
            Additional drivers can be added to the rental agreement at the time of pickup for a fee of $20 per additional driver.
        </p>

        <h2>Vehicle Return</h2>
        <p>
            The vehicle must be returned at the agreed location and time. 
            Late returns will incur additional charges.
        </p>
    </div>
</body>
</html>
