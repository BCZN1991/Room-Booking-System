<?php 
if(isset($_POST['submit'])){
    $to = "email@example.com"; // this is your Email address
    $from = $_POST['email']; // this is the sender's Email address
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $subject = "Form submission";
    $subject2 = "Copy of your form submission";
    $message = $first_name . " " . $last_name . " wrote the following:" . "\n\n" . $_POST['message'];
    $message2 = "Here is a copy of your message " . $first_name . "\n\n" . $_POST['message'];

    $headers = "From:" . $from;
    $headers2 = "From:" . $to;
    mail($to,$subject,$message,$headers);
    mail($from,$subject2,$message2,$headers2); // sends a copy of the message to the sender
    echo "Mail Sent. Thank you " . $first_name . ", we will contact you shortly.";
    // You can also use header('Location: thank_you.php'); to redirect to another page.
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
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
        /* Button download*/
        .btn {
            background-color: darkgoldenrod;
            border: none;
            color: white;
            padding: 12px 30px;
            cursor: pointer;
            font-size: 20px;
        }

        /* Darker background on mouse-over */
        .btn:hover {
            background-color: brown;
        }
        /* Responsive Social Login Form*/

        * {
            box-sizing: border-box;
        }

        /* style the container */
        .container {
            position: relative;
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px 0 30px 0;
        } 

        /* style inputs and link buttons */
        input,
        .btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 4px;
            margin: 5px 0;
            opacity: 0.85;
            display: inline-block;
            font-size: 17px;
            line-height: 20px;
            text-decoration: none; /* remove underline from anchors */
        }

        input:hover,
        .btn:hover {
            opacity: 1;
        }



        /* style the submit button */
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        /* Two-column layout */
        .col {
            float: left;
            width: 50%;
            margin: auto;
            padding: 0 50px;
            margin-top: 6px;
        }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        /* vertical line */
        .vl {
            position: absolute;
            left: 50%;
            transform: translate(-50%);
            border: 2px solid #ddd;
            height: 175px;
        }

        /* text inside the vertical line */
        .vl-innertext {
            position: absolute;
            top: 50%;
            transform: translate(-50%, -50%);
            background-color: #f1f1f1;
            border: 1px solid #ccc;
            border-radius: 50%;
            padding: 8px 10px;
        }

        /* hide some text on medium and large screens */
        .hide-md-lg {
            display: none;
        }

        /* bottom container */
        .bottom-container {
            text-align: center;
            background-color: #666;
            border-radius: 0px 0px 4px 4px;
        }

        /* Responsive layout - when the screen is less than 650px wide, make the two columns stack on top of each other instead of next to each other */
        @media screen and (max-width: 650px) {
            .col {
                width: 100%;
                margin-top: 0;
            }
            /* hide the vertical line */
            .vl {
                display: none;
            }
            /* show the hidden text on small screens */
            .hide-md-lg {
                display: block;
                text-align: center;
            }
        }

        /*Conatct form or responsive form */    
        * {
            box-sizing: border-box;
        }

        input[type=text], select, textarea {
            width: 75%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }

        label {
            padding: 12px 12px 12px 0;
            display: inline-block;
        }

        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float:end;
        }

        input[type=submit]:hover {
            background-color:chartreuse;
        }

        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }

        .col-25 {
            float: left;
            width: 25%;
            margin-top: 6px;
        }

        .col-75 {
            float: left;
            width: 75%;
            margin-top: 6px;
        }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
        @media screen and (max-width: 600px) {
            .col-25, .col-75, input[type=submit] {
                width: 100%;
                margin-top: 0;
            }
        }


        .footer {
            position:inherit;
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
        <div class="header-right">
            <img src="images/royal.png" width="170" height="70" title="Logo" />
            <a href="http://localhost:8080/index/">HOME</a>    
            <a href="http://localhost:8080/loginpage/login/index.html">MEMBER LOGIN</a>
            <a href="#book">ABOUT US</a>
            <a href="http://localhost:8080/gallery/">GALLERY</a>
            <a href="http://localhost:8080/services/">SERVICES</a>
            <a class="active" href="http://localhost:8080/contactus/">CONTACT US</a>
            <a href="http://localhost:8080/signuptwo/regform/index.html">SIGN UP</a>
            <a href="http://localhost:8080/reserve/booking/index.html">BOOKING</a>
            <right>
                <img src="images/royal.png" width="170" height="70" title="Logo" /> </right>

        </div>
    </div>

    <img src="images/contactus.PNG" width="1345" height="130" title="banner" /> 
<center>
    <p><b>
            36 Viscounts Avenue<br/>
            Windsor West<br />
            Randburg<br />
    </p>
</b></center>
<center>

    <b>Phone:  +27 (0) 79 583 3760
        Fax:     +27 (0) 11 444 6668
        E-mail:  info@theroyalgh.co.za</b>
    <p><b> C0-ordinates:
            Lat:    -26.1244196(S)
            Long:   27.9690217(E)</b></p>
</center>

<center>
    <a href="documents/directions.pdf" download="directions.pdf">
        <button class="btn" style="width:90%" >
            <i class="fa fa-download"></i>Download Directions in PDF Format</button>
    </a>

</center>

<center>
    <div id="googleMap" style="width:90%;height:400px;"></div>
</center>
<script>

    function myMap() {
        var mapProp = {
            center: new google.maps.LatLng(-26.1244196, 27.9690217),
            zoom: 12,
        };

        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
    }
    ;

</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDasqJJ6eBB9SR-TMQAKvN3bRw5cCttmmg&callback=myMap"></script>



<div class="container">
    <form action="/" method="post">
        <div class="row">
            <div class="col-25">
                <center>
                    <label for="fname">First Name</label>
                </center>
            </div>
            <div class="col-75">
                <input type="text" id="fname" name="firstname" placeholder="Your name..">
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <center>
                    <label for="lname">Last Name</label>
                </center>
            </div>
            <div class="col-75">
                <input type="text" id="lname" name="lastname" placeholder="Your last name..">
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <center>
                    <label for="lname">Enter Email</label>
                </center>
            </div>
            <div class="col-75">
                <input type="text" id="email" name="email" placeholder="Your email address..">
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <center>
                    <label for="province">Province</label>
                </center>
            </div>
            <div class="col-75">
                <select id="province" name="province">
                    <option value="gauteng">Select your province below:</option>
                    <option value="gauteng">Gauteng</option>
                    <option value="Western_cape">Western Cape</option>
                    <option value="eastern_cape">Eastern Cape</option>
                    <option value="kwazulunatal">KwaZulu Natal</option>
                    <option value="northern_cape">Northern Cape</option>
                    <option value="mpumalanga">Mpumalanga</option>
                    <option value="lompopo">Limpopo</option>
                    <option value="freestate">Free State</option>
                    <option value="northwest">North West</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <center>
                    <label for="subject">Message</label>
                </center>
            </div>
            <div class="col-75">
                <textarea id="subject" name="message" placeholder="Write your inquiry or Send us your feedback..." style="height:200px"></textarea>
            </div>
        </div>
        <div class="row">
            <input type="submit" style="width:100%" value="Inquire / Send us your feedback">
        </div>
    </form>
</div>


<div class="footer">
    <p>Copyright © The Royal Guest House | All Rights Reserved | Website Design and Development by
    <a  href="https://bczn.co.za/">BCZN IT SOLUTIONS</a></p>
</div>



</body>