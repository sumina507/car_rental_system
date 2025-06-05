
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Details Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
        background-image:url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdXPR6yljk3fth7NbaL_YUdtMNo641RvawXA&s');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }

        .form-container {
            max-width: 600px;
            margin: 200px auto;
          background-color: rgba(6, 8, 37, 0.5);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
            color: white;
        }

        .form-title {
            text-align: center;
            margin-bottom: 20px;
        }

        /* Custom style for submit button */
        .btn-custom {
            background-color: #ff3b30;
            border-color: #ff3b30;
            color: white;
        }

        .btn-custom:hover {
            background-color: #e6392e;
            border-color: #e6392e;
        }
    </style>
    <%@ include file="navbar.jsp" %>
</head>
<body>

    <div class="container">
        <div class="form-container">
            <h3 class="form-title">Car Details Form</h3>
            <form method="post" action="CarController2" enctype="multipart/form-data">
            <input type="hidden" name="id" value="${form1.id}">

                <div class="form-group">
                    <label for="brand">Car Brand</label>
                    <input type="text" class="form-control" name="brand" id="brand" placeholder="Enter Car Brand" value="${form1.carBrand}">
                </div>

                <!-- Car Model -->
                <div class="form-group">
                    <label for="model">Car Model</label>
                    <input type="text" class="form-control" name="model" id="model" placeholder="Enter Car Model" value="${form1.carModel}">
                </div>

                <!-- Year -->
                <div class="form-group">
                    <label for="year">Year</label>
                    <input type="number" class="form-control" id="year" name="year" placeholder="Enter Year" value="${form1.year}">
                </div>

                <!-- Price per Day -->
                <div class="form-group">
                    <label for="price">Price per Day</label>
                    <input type="number" class="form-control" id="price" name="price" placeholder="Enter Price per Day" value="${form1.pricePerDay}">
                </div>

              <!--   Features 
                <div class="form-group">
                    <label for="features">Car Features</label>
                    <textarea class="form-control" id="features" rows="3" name="feature" placeholder="Enter Features (e.g., GPS, Bluetooth, Sunroof)" value="${form1.carFeature}"></textarea>
                </div>-->

 <!-- Features -->
<div class="form-group">
    <label for="features">Car Features</label>
    <textarea class="form-control" id="features" rows="3" name="feature" placeholder="Enter Features (e.g., GPS, Bluetooth, Sunroof)">${form1.carFeature}</textarea>
</div>



<!-- Image Upload -->
<div class="form-group">
    <label for="image">Upload Car Image:</label><br>
    <input type="file" id="image" name="image" accept="image/*">
</div>


                <!-- Submit Button with Custom Color -->
                <button type="submit" class="btn btn-custom btn-block">Submit</button>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
<%@ include file="Footer.jsp" %>
</html>
