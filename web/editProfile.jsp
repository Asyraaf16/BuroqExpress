<%-- 
    Document   : profile
    Created on : Dec 27, 2023, 2:09:37 AM
    Author     : user
--%>
<%@ page language="java" import="java.sql.*" %>
<%@page import="com.mvc.dao.CustomerDAO"%>
<%@page import="com.mvc.bean.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="Assets/logo.png" type="image/x-icon"/>
        <title>Edit Profile</title>
        <style>
            h1{
                font-family: Helvetica, sans-serif;
                font-weight: 800;
            }
            form{
                background-color: #F6F4EB;
            }
        </style>
        <script>
            // Check if loginSuccess is true, then display a success message
            var updateSuccess = <%= Boolean.TRUE.equals(request.getAttribute("updateSuccess"))%>;
            if (loginSuccess) {
                window.onload = function () {
                    alert("Update successful");
                };
            }
        </script>
    </head>
    <body>
        <%@ include file="navbar.jsp" %>
        <div class="container mt-3">
            <h1 class="text-center mb-3 mt-2">Edit Profile</h1>
            <div class="d-flex justify-content-center">
                <form class="row g-2 shadow p-2 mb-3 rounded" action="CustController" method ="POST">

                    <div class="col-md-5">
                        <label for="inputEmail4" class="form-label">Username:</label>
                        <input type="email" class="form-control" value="">
                    </div>
                    <div class="col-md-5">
                        <label for="inputEmail4" class="form-label">Full Name:</label>
                        <input type="email" class="form-control" value="">
                    </div>
                    <div class="col-md-2">
                        <label for="inputEmail4" class="form-label">Phone Number:</label>
                        <input type="email" class="form-control" placeholder="Exp: 012-3456789" value="">
                    </div>
                    <div class="col-md-5">
                        <label for="inputEmail4" class="form-label">Email:</label>
                        <input type="email" readonly class="form-control" value="">
                    </div>
                    <div class="col-md-5">
                        <label for="inputPassword4" class="form-label">Password:</label>
                        <input type="password" class="form-control" value="">
                    </div>

                    <div class="col-12">
                        <label for="inputAddress" class="form-label">Address:</label>
                        <input type="text" class="form-control" value="">
                    </div>
                    <div class="d-grid gap-2 col-3 mx-auto">
                        <input type="hidden" name="operation" value="UPDT" />
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </form>

            </div>
        </div>
    </body>
</html>
