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

        .topnav .login-container {
            float: right;
        }

        .topnav input[type=text] {
            padding: 6px;
            margin-top: 8px;
            font-size: 17px;
            border: none;
            width:120px;
        }

        .topnav .login-container button {
            float: right;
            padding: 6px 10px;
            margin-top: 8px;
            margin-right: 16px;
            background-color: #555;
            color: white;
            font-size: 17px;
            border: none;
            cursor: pointer;
        }

        .topnav .login-container button:hover {
            background-color: green;
        }

        @media screen and (max-width: 600px) {
            .topnav .login-container {
                float: none;
            }
            .topnav a, .topnav input[type=text], .topnav .login-container button {
                float: none;
                display: block;
                text-align: left;
                width: 100%;
                margin: 0;
                padding: 14px;
            }
            .topnav input[type=text] {
                border: 1px solid #ccc;  
            }
        }



        /*Slideshow slide*/
        * {box-sizing: border-box}
        body {font-family: Verdana, sans-serif; margin:0}
        .mySlides {display: none}
        img {vertical-align: middle;}

        /* Slideshow container */
        .slideshow-container {
            max-width:1100px;
            position:relative;
            margin: auto;
        }

        /* Next & previous buttons */
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }

        /* Position the "next button" to the right */
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

        /* On hover, add a black background color with a little bit see-through */
        .prev:hover, .next:hover {
            background-color: rgba(0,0,0,0.8);
        }

        /* Caption text */
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            cursor: pointer;
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

        .active, .dot:hover {
            background-color: #717171;
        }

        /* Fading animation */
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @-webkit-keyframes fade {
            from {opacity: .4} 
            to {opacity: 1}
        }

        @keyframes fade {
            from {opacity: .4} 
            to {opacity: 1}
        }

        /* On smaller screens, decrease text size */
        @media only screen and (max-width: 300px) {
            .prev, .next,.text {font-size: 11px}
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
            <img src="Images/royal.png" width="170" height="80" title="Logo" />
            <a class="active" href="http://localhost:8080/index/">HOME</a>    
            <a href="http://localhost:8080/loginpage/login/index.html">MEMBER LOGIN</a>
            <a href="#aboutus" >ABOUT US</a>
            <a href="http://localhost:8080/gallery/">GALLERY</a>
            <a href="http://localhost:8080/services/">SERVICES</a>
            <a href="http://localhost:8080/contactus/">CONTACT US</a>
            <a href="http://localhost:8080/signuptwo/regform/index.html">SIGN UP</a>
            <a href="http://localhost:8080/reserve/booking/index.html">BOOKING</a>

            <img src="Images/royal.png" width="170" height="80" title="Logo" /> 

               <div style="text-align:center">
                <form action="/action_page.php">
                    <input type="text" placeholder="Username" name="username">
                    <input type="text" placeholder="Password" name="psw">
                    <button type="submit">Login</button>
                </form>
            </div>

        </div>
</div> 


    <div class="slideshow-container">

        <div class="mySlides fade">
            <div class="numbertext">1 / 3</div>
            <img src="Images/home.PNG" style="width:100%">
            <div class="text"></div>
        </div>

        <div class="mySlides fade">
            <div class="numbertext">2 / 3</div>
            <img src="Images/slide8.PNG" style="width:100%">
            <div class="text"></div>
        </div>

        <div class="mySlides fade">
            <div class="numbertext">3 / 3</div>
            <img src="Images/slide10.PNG" style="width:100%">
            <div class="text"></div>
        </div>


        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>

    </div>
    <br>

    <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span> 
        <span class="dot" onclick="currentSlide(2)"></span> 
        <span class="dot" onclick="currentSlide(3)"></span> 
    </div>

    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) {
                slideIndex = 1
            }
            if (n < 1) {
                slideIndex = slides.length
            }

            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";

        }
    </script>




    <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span> 
        <span class="dot" onclick="currentSlide(2)"></span> 
        <span class="dot" onclick="currentSlide(3)"></span> 
    </div>


    <div style="padding-left:20px">
        <center>
            <h1>THE ROYAL GUEST HOUSE EXPERIENCE</h1>
        </center>
        <center>
            <p style="font:italic;">The Royal Guest House is an up-market, luxury guest house nestled in beautiful Atholl. Your comfort in our beautiful rooms is our concern, and we place a strong emphasis on privacy. Our highly competitive rates make this the perfect place to stay in Johannesburg.
                The Royal Guest House is a bed & breakfast in Cresta. We are located within minutes from the Cresta Mall, Cresta Convention Centre and the Golf course. Square Shopping Centre, which offers amongst other things restaurants, coffee houses, a Woolies Food and the Spar, is a 5 minute walk from this luxury B and B accommodation.</p>

            <p>  Our  guest house is in central Gauteng where there is convenient access to all the major highways, as well as quick easy access to Hyde Park, Rosebank, the Village Walk, Morningside Clinic and Sandton Clinic.

                The nearest Gautrain station is less than 15 km , offering direct trips to OR Tambo Johannesburg International. If you prefer the drive, it will take approximately 36 minutes to the airport. We are a 5 minute walk from the bus routes in Cresta, which will take you wherever you want to go.</p>
        </center>
    </div>

    <div>
        <center>
            <img src="Images/images.PNG" width="1200" height="350" title="images" />
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
            BCZN IT SOLUTIONS</p>
    </div>

</html>
