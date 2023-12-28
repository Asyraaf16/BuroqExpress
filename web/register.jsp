<%-- 
    Document   : register
    Created on : Dec 25, 2023, 10:20:52 PM
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
        <title>Registeration</title>
        <style>
            body {
                background-color: #FED9BE;
            }
            h1{
                font-family: Helvetica, sans-serif;
                font-weight: 800;
            }
        </style>
    </head>
    <body>

        <div class="container mt-5">

                <h1 class="text-center">Account Registeration</h1><br>
                <form class="row g-2 shadow p-2 mb-3 bg-white rounded" method ="POST">

                    <div class="col-md-5">
                        <label class="form-label">Username:</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="col-md-5">
                        <label class="form-label">Full Name:</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="col-md-2">
                        <label class="form-label">Phone Number:</label>
                        <input type="text" class="form-control" placeholder="Exp: 012-3456789">
                    </div>
                    <div class="col-md-5">
                        <label class="form-label">Email:</label>
                        <input type="email" class="form-control">
                    </div>
                    <div class="col-md-5">
                        <label  class="form-label">Password:</label>
                        <input type="password" class="form-control">
                    </div>

                    <div class="col-12">
                        <label class="form-label">Address:</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="d-grid gap-2 col-3 mx-auto">
                        <button type="submit" class="btn btn-primary">Sign Up</button>
                    </div>
                </form>
        </div>
    </body>
</html>
