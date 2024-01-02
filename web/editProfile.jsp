<%-- 
    Document   : profile
    Created on : Dec 27, 2023, 2:09:37 AM
    Author     : user
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="util.DBConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    // Get the cust_id attribute from the session
    Object custIdObject = session.getAttribute("cust_id");

    // Check if cust_id is null or not an instance of Integer
    if (custIdObject == null || !(custIdObject instanceof Integer)) {
        request.setAttribute("errMessage", "You have not logged in");
        out.println("<script> location.href='login.jsp';</script>");
    }
        // Convert custIdObject to int
      int  cust_id = (Integer) custIdObject;
    
%>

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
            if (updateSuccess) {
                window.onload = function () {
                    alert("Update successful");
                };
            }
        </script>
    </head>
    <body>
        <%
            Connection conn = DBConnection.createConnection();
            Statement stmt = conn.createStatement();
            String sql = "SELECT * from customer where cust_id = '" + cust_id + "'" ;
            ResultSet rs = stmt.executeQuery(sql);
            rs.next();
        %>
        <%@ include file="navbar.jsp" %>
        <div class="container mt-3">
            <h1 class="text-center mb-3 mt-2">Edit Profile</h1>
            <div class="d-flex justify-content-center">
                <form class="row g-2 shadow p-2 mb-3 rounded" action="CustController" method ="POST">
                    <div class="col-md-1">
                        <label for="inputEmail4" class="form-label">ID:</label>
                        <input type="text" class="form-control" name="cust_id" value="<%= rs.getInt("cust_id") %>" readonly>
                    </div>
                    <div class="col-md-5">
                        <label for="inputEmail4" class="form-label">Username:</label>
                        <input type="text" class="form-control" name="cust_username" value="<%= rs.getString("cust_username") %>">
                    </div>
                    <div class="col-md-5">
                        <label for="inputEmail4" class="form-label">Full Name:</label>
                        <input type="text" class="form-control" name="cust_name" value="<%= rs.getString("cust_name") %>">
                    </div>
                    <div class="col-md-2">
                        <label for="inputEmail4" class="form-label">Phone Number:</label>
                        <input type="text" class="form-control" name= "cust_phoneNum" placeholder="Exp: 012-3456789" value="<%= rs.getString("cust_phoneNum") %>">
                    </div>
                    <div class="col-md-5">
                        <label for="inputEmail4" class="form-label">Email:</label>
                        <input type="email" class="form-control" name="cust_email" value="<%= rs.getString("cust_email")%>" readonly>
                    </div>
                    <div class="col-md-5">
                        <label for="inputPassword4" class="form-label">Password:</label>
                        <input type="password" class="form-control" name="cust_password" value="<%= rs.getString("cust_password") %>" readonly>
                    </div>
                    <div class="col-12">
                        <label for="inputAddress" class="form-label">Address:</label>
                        <input type="text" class="form-control" name="cust_address" value="<%= rs.getString("cust_address") %>">
                    </div>
                    <div class="d-grid gap-2 col-3 mx-auto">
                        <input type="hidden" name="operation" value="UPDT" />
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </c:set>
</body>
</html>
