<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Royal Guest House</title>
    </head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {box-sizing: border-box;}

        body { 
            margin: 0;
            font-family:cursive;
            background-color:#ddd;
        }

        .header {
            overflow: hidden;
            background-color: #f1f1f1;
            padding: 10px 5px;
        }

        .header a {
            float:bottom;
            color: black;
            text-align: center;
            padding: 12px;
            text-decoration: none;
            font-size: 18px; 
            line-height: 25px;
            border-radius: 4px;
        }

        .header a.logo {
            font-size: 25px;
            font-weight: bold;
        }

        .header a:hover {
            background-color: #ddd;
            color: black;
        }

        .header a.active {
            background-color:indigo;
            color: white;
        }

        .header-right {
            float:left;
        }

        @media screen and (max-width: 500px) {
            .header a {
                float: none;
                display: block;
                text-align: left;
            }

            .header-right {
                float: none;
            }

        }

        /* LOGIN STYLE */

        * {box-sizing: border-box;}

        body {
            margin: 0;
            font-family:sans-serif;
        }

        .topnav {
            overflow: hidden;
            background-color: #e9e9e9;
        }

        .topnav a {
            float: left;
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        .topnav a.active {
            background-color: #2196F3;
            color: white;
        }

        .footer {
            position: relative;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color:#717171;
            color: white;
            text-align: center;
        }
    </style>

</head>
<body>

    <div class="header">
        <div>
            <center>
                <a href=https://www.facebook.com/aquavitplett"><img src="social/facebook.png" width="25" height="25" title="facebook" /></a>
                <a href="https://mail.google.com/mail/u/0/#inbox"><img src="social/google.png" width="25" height="25" title="google+" /></a>
                <a href="#" class="fa fa-instagram"><img src="social/instagram.jpg" width="25" height="25" title="instagram" /></a>
                <a href="#" class="fa fa-twitter"><img src="social/twitter.png" width="25" height="25" title="twitter" /></a>
                <a href="https://www.linkedin.com/feed/"><img src="social/linkedin.png" width="25" height="25" title="linkedin" /></a>
                <a href="https://www.youtube.com/"><img src="social/youtube.png" width="25" height="25" title="youtube" /></a>
            </center>
        </div>
        <div class="header-right">
            <img src="services/royal.png" width="160" height="80" title="Logo" />
            <a  href="http://localhost:8080/index/">HOME</a>    
            <a href="http://localhost:8080/loginpage/login/index.html">MEMBER LOGIN</a>
            <a href="#aboutus" >ABOUT US</a>
            <a href="http://localhost:8080/gallery/">GALLERY</a>
            <a class="active" href="http://localhost:8080/services/">SERVICES</a>
            <a href="http://localhost:8080/contactus/">CONTACT US</a>
            <a href="http://localhost:8080/signuptwo/regform/index.html">SIGN UP</a>
            <a href="http://localhost:8080/reserve/booking/index.html">BOOKING</a>

            <img src="services/royal.png" width="160" height="80" title="Logo" /> 

        </div>
    </div>
    <div>
        <center>
            <img src="services/faci.PNG" width="1100" height="700" title="" />
        </center>
    </div>

    <div>
        <center>
            <img src="social/facebook.png" width="25" height="25" title="facebook" />
            <img src="social/google.png" width="25" height="25" title="google+" />
            <img src="social/instagram.jpg" width="25" height="25" title="instagram" />
            <img src="social/twitter.png" width="25" height="25" title="twitter" />
            <img src="social/linkedin.png" width="25" height="25" title="linkedin" />
            <img src="social/youtube.png" width="25" height="25" title="youtube" />
        </center>
    </div>
    <div class="footer">
        <p>Copyright © The Royal Guest House | All Rights Reserved | Website Design and Development by 
            <a  href="https://bczn.co.za/">BCZN IT SOLUTIONS</a></p>
    </div>


</body>
</html>