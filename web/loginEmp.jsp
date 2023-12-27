<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Login</title>
        <link rel="icon" href="Assets/logo.png" type="image/x-icon"/>
        <style>
            body {
                background-color: #FED9BE;
                display: flex;
                align-items: center;
                justify-content: center;
                height: 100vh;
                margin: 0;
            }

            .container {
                display: flex;
                width: 70%; /* Adjust this value to change the ratio of logo to form */
            }

            .logo-section {
                flex: 1;
                padding-right: 20px;
            }

            .form-section {
                flex: 1;
                background-color: white;
                padding: 20px;
                border-radius: 10px;
                -webkit-box-shadow: 1px 3px 6px 1px rgba(0,0,0,0.89); 
                box-shadow: 1px 3px 6px 1px rgba(0,0,0,0.89);
            }
            h1{
                font-family: Helvetica, sans-serif;
                font-weight: 800;
            }
            .form-section form {
                max-width: 300px; /* Adjust this value to set the maximum width of the form */
                margin: auto;
            }

            .separator {
                border-right: 5px solid black; /* Adjust the color of the line */
                height: 100%;
                margin: 0 20px;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <!-- Logo Section -->
            <div class="logo-section">
                <img style="width: 100%; height: auto;" src="Assets/logo.png" alt="company logo"/>
            </div>

            <!-- Separator -->
            <div class="separator"></div>

            <!-- Login Form Section -->
            <div class="form-section">
                <h1 class="text-center">Staff Log In</h1><br>
                <form>
                    <div class="mb-3">
                        <label for="username" class="form-label">Email</label>
                        <input type="text" class="form-control" placeholder="Enter your email address">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" placeholder="Enter your password">
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <input class="btn btn-primary" type="submit" value="Sign in"></input>
                    </div>
                    <p class="text-center">Not registered? <a href="#">Create an account</a></p>
                </form>
            </div>
        </div>

    </body>
</html>
