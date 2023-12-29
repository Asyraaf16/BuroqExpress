<%-- 
    Document   : statusUser
    Created on : Dec 27, 2023, 9:59:42 AM
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
        <title>Status Parcel</title>
        <style>
            h1{
                font-family: Helvetica, sans-serif;
                font-weight: 800;
            }
        </style>
    </head>
    <body>
        <%@ include file="navbar.jsp" %>
        <h1 class="text-center mb-3 mt-2">Parcel List</h1>
            <div class="d-flex justify-content-center">
                <table class="table table-bordered border-black" >
                    <thead class="table-dark text-center">
                        <tr>
                            <th>Parcel ID</th>
                            <th>Status</th>
                            <th>Invoice</th>
                        </tr>
                    </thead>
                    <tr>
                        <td>
                            <input type="text" readonly class="form-control-plaintext text-center col-sm-3" id="id parcel" value="0192321">
                        </td>
                        <td>
                            <input type="text" readonly class="form-control-plaintext text-center col-sm-3" id="status parcel" value="#####">
                        </td>    
                        <td class="text-center align-middle col-sm-3">
                            <a class="btn btn-outline-success" href="#" title="Parcel Info">Invoice</a>
                            <a class="btn btn-outline-danger" href="#" title="Parcel Info">Delete</a>
                        </td>
                    </tr>
                </table>
            </div>
    </body>
</html>
