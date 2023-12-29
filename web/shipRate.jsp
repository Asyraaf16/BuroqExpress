<%-- 
    Document   : shiprate
    Created on : Dec 27, 2023, 9:56:18 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="Assets/logo.png" type="image/x-icon"/>
        <title>Shipping Rate</title>
        <style>
            h1{
                font-family: Helvetica, sans-serif;
                font-weight: 800;
            }
            form{
                background-color: #F6F4EB;
            }
            .form-divider {
                border-top: 1px dashed #aaa;
                margin: 20px 0;
            }

        </style>        
    </head>
    <body>
        <%@ include file="navbar.jsp" %>
        <h1 class="text-center mb-3 mt-2">Shipping Rates</h1>
        <div class="d-flex justify-content-center mt-2">
            <form class='shadow p-2 mt-2 rounded'>
                <label class="form-label">From:</label>
                <input type="text" class="form-control" placeholder="Origin's Postcode">
                <label class="form-label mt-1">To:</label>
                <input type="text" class="form-control" placeholder="Destination's Postcode">   
                <div class='form-divider'></div>
                <label class="form-label">Estimated Weight:</label><br>
                <div class="input-group">                 
                    <input type="text" class="form-control" placeholder="Destination's Postcode">
                    <span class="input-group-text">KG</span>
                </div>
                <div class="col-4 mt-2 mx-auto">
                    <button type="submit" class="btn btn-primary">Check</button>
                </div>
            </form>
        </div>
    </body>
</html>
