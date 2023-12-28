<%-- 
    Document   : homeUser
    Created on : Dec 27, 2023, 1:11:08 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/491b6da649.js" crossorigin="anonymous"></script>
        <title>Home</title>
        <style>
            h1{
                font-family: Helvetica, sans-serif;
                font-weight: 800;
            }
            .grid-container {
                display: grid;
                gap: 50px;
                grid-template-columns: auto auto auto;    
                padding: 10px;
            }

            .grid-item {
                width: 200px;
                height: 200px;
                background-color: #F5F7F8;
                border-radius: 10px;
                -webkit-box-shadow: 1px 3px 6px 1px rgba(0,0,0,0.89); 
                box-shadow: 1px 3px 6px 1px rgba(0,0,0,0.89);
                padding: 20px;
                font-size: 30px;
                text-align: center;
            }

            .grid-item:hover{
                background: #F7EFE5;
                color: black;
            }
            a{
                text-decoration: none;
                color: black;
            }
            img{
                align-items: center;
                width: 8rem;
                height: auto;
            }
        </style>

    </head>
    <body>
        <%@ include file="navbar.jsp" %>
        <div>
            <h1 class="text-center">Welcome to Buroq Express</h1>
            <div class="d-flex justify-content-center">
                <div class="grid-container">
                    <div class="grid-item">
                        <a href="editProfile.jsp">
                            <img src="Assets/editprofile.png" alt="editprofile">
                            <h4>Edit Profile</h4>
                        </a>
                    </div>
                    <div class="grid-item">
                        <a href="createOrder.jsp">
                            <img src="Assets/create.png" alt="Create Order">
                            <h4>Create Order</h4>
                        </a>
                    </div>
                    <div class="grid-item">
                        <a href="statusUser.jsp">
                            <img src="Assets/status.png" alt="Status">
                            <h4>Status</h4>
                        </a>
                    </div>
                    <div class="grid-item">
                        <a href="shipRate.jsp">
                            <img src="Assets/shiprate.png" alt="Shipping Rates">
                            <h4>Shipping Rates</h4>
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
