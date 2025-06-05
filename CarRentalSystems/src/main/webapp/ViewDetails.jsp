
          <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="navbar.jsp" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Details - Sumz Car Rental</title>

    <script>
        function confirmDelete(){
            var v = confirm("Do you really want to delete?");
            return v;
        }
    </script>
<style>
    body {
        background-color: #060825;
        color: white;
        padding-top: 80px;
        text-align:center;
    }
    .container {
        padding: 5px;
    }
    .search-container {
        text-align: right;
        margin-bottom: 10px;
    }
    .search-box {
        border: 2px solid #ccc;
        border-radius: 5px;
        padding: 10px;
        font-size: 16px;
        width: 250px;
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
        color: black; /* Input text color */
    }
    .search-box:focus {
        border-color: #007bff;
        outline: none;
        box-shadow: 0px 0px 8px rgba(0, 123, 255, 0.5);
    }
    .table {
        width: 100%;
        border-collapse: collapse;
        color: white; /* Table text color */
    }
    .table th, .table td {
        padding: 10px;
        border: 1px solid #444; /* Adjusted border color for visibility */
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

</head>
<body>

<h2>View Details</h2>
    <c:if test="${! empty carList1}">
        <div class="container table-container">
            <div class="search-container">
                <input type="text" class="search-box" placeholder="Search..." name="search">
            </div>

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Gender</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Confirm Password</th>
                        <th>Contact Number</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${carList1}" var="s" >
                        <tr>
                            <td><c:out value="${s.id}"></c:out></td>
                            <td><c:out value="${s.name}"></c:out></td>
                            <td><c:out value="${s.address}"></c:out></td>
                            <td><c:out value="${s.gender}"></c:out></td>
                            <td><c:out value="${s.email}"></c:out></td>
                            <td><c:out value="${s.password}"></c:out></td>
                            <td><c:out value="${s.confirmPassword}"></c:out></td>
                            <td><c:out value="${s.contactNumber}"></c:out></td>
                            <td>
                                <a href="Controller?action=edit&id=${s.id}">
                                    <button type="button" class="btn-edit">Edit</button>
                                </a>
                                <a href="Controller?action=delete&id=${s.id}" onclick="return confirmDelete();">
                                    <button type="button" class="btn-delete">Delete</button>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </c:if>
</body><br><br><br><br>
 <%@ include file="Footer.jsp" %>
</html>