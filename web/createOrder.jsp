<%-- 
    Document   : createOrder
    Created on : Dec 27, 2023, 9:57:56 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>        
        <link rel="icon" href="Assets/logo.png" type="image/x-icon"/>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="Assets/logo.png" type="image/x-icon"/>        
        <title>Create Order</title>
        <style>
            h1{
                font-family: Helvetica, sans-serif;
                font-weight: 800;
            }
            form{
                background-color: #F6F4EB;
            }
        </style>
    </head>
    <body>
        <%@ include file="navbar.jsp" %>
        <h1 class="text-center mt-3 mb-3">Create Order</h1>
        <div class="container-sm d-flex justify-content-center">
            <form class="row g-2 shadow p-2 mb-3 rounded" method ="POST">
                <fieldset>
                    <legend>Sender:</legend>
                    <div class="row">
                        <div class="col">
                            <label class="form-label">Name</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="col-4">
                            <label class="form-label">Phone Number</label>
                            <input type="text" class="form-control" placeholder="Exp: 012-3456789">
                        </div>
                    </div>
                    <div class="col-12">
                        <label for="inputAddress" class="form-label">Address</label>
                        <input type="text" class="form-control">
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Receiver:</legend>
                    <div class="row">
                        <div class="col">
                            <label class="form-label">Name</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="col-4">
                            <label class="form-label">Phone Number</label>
                            <input type="text" class="form-control" placeholder="Exp: 012-3456789">
                        </div>
                    </div>
                    <div class="col-12">
                        <label for="inputAddress" class="form-label">Address</label>
                        <input type="text" class="form-control">
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Parcel Information:</legend>
                    <div class="row">
                        <div class="col">
                            <label class="form-label">Description</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="col-2">
                            <label class="form-label">Weight ( in KG )</label>
                            <input type="text" class="input-container form-control">
                        </div>
                    <div class="col-md-2">
                        <label for="inputAddress" class="form-label">Shipping Fee (RM)</label>
                        <input type="text" class="form-control">
                    </div>                        
                    </div>
                </fieldset>                    
                <div class="d-grid gap-2 col-3 mx-auto mt-3">
                    <button type="submit" class="btn btn-primary"><i class="fa-solid fa-square-plus"></i></button>
                </div>
            </form>
        </div>
    </body>
</html>
