<%-- 
    Document   : updatePkg
    Created on : Dec 29, 2023, 8:11:08 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Parcel</title>
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
        <%@ include file="navbarEmp.jsp" %>
        <h1 class="text-center mb-3 mt-2">Update Parcel</h1>
        <div class="container d-flex justify-content-center">
            <form name='search parcel id' class="row g-2 shadow p-2 mb-3 rounded">
                <label class="form-label">Parcel ID</label>
                <div class="input-group mb-3">
                    <input type="text" class="form-control input-lg">
                    <button class="btn btn-outline-secondary" type="button"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
                <label class="form-label">Parcel ID</label>
                <div class="input-group">
                    <input type="text" aria-label="Parcel ID" readonly class="form-control">
                    <span class="input-group-text">Status</span>
                    <select name="status" class="form-select" aria-label="Default select example">
                        <option selected>Select...</option>
                        <option>Pickup Complete</option>
                        <option>In Transit</option>
                        <option>Out of Delivery</option>
                        <option>Delivered</option>
                    </select>
                </div>
                <div class="d-grid gap-2 col-6 mx-auto mt-4">
                    <input class="btn btn-primary" type="submit" value="Save" />                    
                </div>
            </form>
        </div>
    </body>
</html>
