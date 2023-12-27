<%-- 
    Document   : home
    Created on : Dec 26, 2023, 4:20:46 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/491b6da649.js" crossorigin="anonymous"></script>
        <link rel="icon" href="Assets/logo.png" type="image/x-icon"/>
        <title>Navbar</title>
        <style>
            :root{
                font-size: 16px;
                font-family: 'Open Sans';
            }
            body{
                color: black;
                background-color: #FED9BE;
                margin: 0;
                padding: 0;
            }
            body::-webkit-scrollbar{
                width: 0.25rem;
            }
            body::-webkit-scrollbar-track{
                background: #1e1e24;
            }
            body::-webkit-scrollbar-thumb{
                background: #5549b8;
            }
            main{
                margin-left: 5rem;
                padding: 1rem;
            }
            .navbar{
                width: 5rem;
                height: 100vh;
                position: fixed;
                background-color: white;
                transition: width 200ms ease;
            }
            .navbar-nav{
                list-style: none;
                padding: 0;
                margin: 0;
                display: flex;
                flex-direction: column;
                align-items: center;
                height: 100%;
            }
            .nav-item{
                width: 100%;
            }
            .nav-item:last-child{
                margin-top: auto;
            }
            .nav-link{
                display:flex;
                align-items: center;
                height: 5rem;
                color: black;
                text-decoration: none;
            }
            .link-text{
                display:none;
                margin-left: 1rem;
            }
            .nav-link:hover{
                background: #F7EFE5;
                color: black;
            }
            .nav-link i{
                min-width: 2rem;
                margin: 0 1.5rem;
            }
            .navbar:hover{
                width: 12rem;
            }
            .navbar:hover .link-text{
                display: block;
            }
        </style>
    </head>
    <body>
        <nav class="navbar">
            <ul class="navbar-nav">

                <li class="nav-item">
                    <a href="editProfile.jsp" class="nav-link">
                        <i class="fa-solid fa-circle-user"></i>
                        <span class="link-text"> Profile</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="homeUser.jsp" class="nav-link">
                        <i class="fa-solid fa-house"></i> 
                        <span class="link-text">Home</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fa-solid fa-pen"></i> 
                        <span class="link-text">Order</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="statusUser.jsp" class="nav-link">
                        <i class="fa-solid fa-box"></i> 
                        <span class="link-text">My Parcel</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="shipRate.jsp" class="nav-link">
                        <i class="fa-solid fa-hand-holding-dollar"></i>
                        <span class="link-text"> Shipping Rate</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="login.jsp" class="nav-link">
                        <i class="fa-solid fa-right-from-bracket"></i> 
                        <span class="link-text">Log out</span>
                    </a>
                </li>
            </ul>
        </nav>

        <main>

        </main>
    </body>
</html>
