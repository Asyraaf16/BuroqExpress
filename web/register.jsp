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
        <script>
            function validateForm() {
                // Get the password input value
                var password = document.getElementById("cust_password").value;
                var cpassword = document.getElementById("cpassword").value;
                // Reset error messages
                document.getElementById("message").innerHTML = "";
                document.getElementById("message2").innerHTML = "";
                //If password is not same with cpassword
                if (cpassword != password) {
                    document.getElementById("message2").innerHTML = "Please make sure the password is same";
                    return false;
                }
                else{
                    document.getElementById("message2").innerHTML = "";
                }
                // If password is empty
                if (password == "") {
                    document.getElementById("message").innerHTML = "Please fill up the password!";
                    return false;
                }
                else{
                    document.getElementById("message").innerHTML = "";
                }
                //minimum length of password validation  
                if (password.length < 8) {
                    document.getElementById("message").innerHTML = "Password must be at least 8 characters long";
                    return false;
                }
                else{
                    document.getElementById("message").innerHTML = "";
                }
                //maximum length of password validation  
                if (password.length > 15) {
                    document.getElementById("message").innerHTML = "Password length must not exceed 15 characters";
                    return false;
                } else {
                    document.getElementById("message").innerHTML = "";
                }
                // Add more validation criteria as needed

                return true; // Form submission will proceed if all validations pass
            }
        </script>
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
            <form class="row g-2 shadow p-2 mb-3 bg-white rounded" onsubmit="return validateForm()" action="RegisterServletCust" method ="POST">

                <div class="col-md-5">
                    <label class="form-label">Username:</label>
                    <input type="text" class="form-control" name="cust_username">
                </div>
                <div class="col-md-5">
                    <label class="form-label">Name:</label>
                    <input type="text" class="form-control" name="cust_name">
                </div>
                <div class="col-md-2">
                    <label class="form-label">Phone Number:</label>
                    <input type="text" class="form-control" placeholder="Exp: 012-3456789" name="cust_phoneNum">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Email:</label>
                    <input type="email" class="form-control" name="cust_email">
                </div>
                <div class="col-md-4">
                    <label  class="form-label">Password:</label>
                    <input type="password" id="cust_password" class="form-control" name="cust_password">
                    <span id = "message" style="color:red"> </span> <br><br>  
                </div>
                <div class="col-md-4">
                    <label  class="form-label">Confirm Password:</label>
                    <input type="password" id="cpassword" class="form-control" name="cpassword">
                    <span id = "message2" style="color:red"> </span> <br><br>  
                </div>
                <div class="col-12">
                    <label class="form-label">Address:</label>
                    <input type="text" class="form-control" name="cust_address">
                </div>
                <div class="d-grid gap-2 col-3 mx-auto">
                    <input type="hidden" name="operation" value="REG" />
                    <button type="submit" class="btn btn-primary">Sign Up</button>
                </div>
            </form>
        </div>
    </body>
</html>
