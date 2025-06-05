<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="navbar.jsp" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Details - Sumz Car Rental</title>
  <style>
        body {
            background-color: #060825;
            color: white;
            padding-top:50px;
            text-align:left;
        }
        .container {
            padding: 20px;
        }
        .table {
            color: white;
        }
        .btn-edit {
            background-color: green;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
        }
        .btn-delete {
            background-color: red;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
        }
        .btn-edit:hover {
            background-color: darkgreen;
        }
        .btn-delete:hover {
            background-color: darkred;
        }
        
    </style>
         <script>
        function confirmDelete(){
            var v = confirm("Do you really want to delete?");
            return v;
        }
    </script>
</head>
<body>
 <c:if test="${!empty carList}">
    <div class="container">
        <h2>Car Details</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Model</th>
                    <th>Brand</th>
                    <th>Feature</th>
                    <th>Year</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="car" items="${carList}">
                    <tr>
                        <td><c:out value="${car.id}"></c:out></td>
                        <td><c:out value="${car. carModel}"></c:out></td>
                        <td><c:out value="${car.carBrand}"></c:out></td>
                        <td><c:out value="${car.carFeature}"></c:out></td>
                        <td><c:out value="${car.year}"></c:out></td>
                        <td><c:out value="${car.pricePerDay}"></c:out></td>
                        <td><img src="data:image/jpeg;base64,${car.imageUrl}" height="200" width="200"></td>
                        <td>
                            <a href="Controller?action=edit1&id=${car.id}">
                                <button type="button" class="btn-edit">Edit</button>
                            </a>
                            <a href="Controller?action=delete1&id=${car.id}" onclick="return confirmDelete();">
                                <button type="button" class="btn-delete">Delete</button>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
     </c:if>
</body>
<%@ include file="Footer.jsp" %>
</html>
