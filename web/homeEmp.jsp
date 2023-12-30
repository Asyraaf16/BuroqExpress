<%-- 
    Document   : homeEmp
    Created on : Dec 28, 2023, 11:07:02 PM
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
        <link rel="icon" href="Assets/logo.png" type="image/x-icon"/>
        <title>Home</title>
        <style>
            h1 {
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
                text-align: center;
            }

            .grid-item img {
                width: 8rem;
                height: auto;
            }

            .grid-item h1 {
                font-size: 2rem;
            }

            .grid-item h4 {
                margin-top: 10px;
            }

            .grid-item-container {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                background-color: #F5F7F8;
                border-radius: 10px;
                -webkit-box-shadow: 1px 3px 6px 1px rgba(0,0,0,0.89); 
                box-shadow: 1px 3px 6px 1px rgba(0,0,0,0.89);
                padding: 20px;
                width: 200px; /* Set a fixed width */
                height: 200px; /* Set a fixed height */
            }

            .grid-item-container:hover{
                background: #F7EFE5;
                color: black;
            }

            a {
                text-decoration: none;
                color: black;
            }
        </style>
    </head>
    <body>
        <%@ include file="navbarEmp.jsp" %>
        <div>
            <h1 class="text-center mb-3 mt-2">Welcome (Staff Name)</h1>
            <div class="d-flex justify-content-center">
                <div class="grid-container">
                    <div class="grid-item">
                        <div class="grid-item-container">
                            <h1>(12)</h1>
                        </div>
                        <h4>Order Placed</h4>
                    </div>
                    <div class="grid-item">
                        <div class="grid-item-container">
                            <h1>(12)</h1>
                        </div>
                        </a>
                        <h4>Transit</h4>
                    </div>
                    <div class="grid-item">
                        <div class="grid-item-container">
                            <h1>(12)</h1>
                        </div>
                        </a>
                        <h4>Completed</h4>
                    </div>
                    <div class="grid-item">
                        <div class="grid-item-container">
                            <h1>(12)</h1>
                        </div>
                        </a>
                        <h4>Reg. Customer</h4>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
