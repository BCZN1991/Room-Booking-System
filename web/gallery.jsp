
<!DOCTYPE html>

<html>
    <head>
        <title>Photo Gallery</title>
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
        
        
        
        div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 180px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 2px;
  text-align: center;
  font-family:sans-serif;
  
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
        
        
        
        
        
        #myImg {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation */
.modal-content, #caption {  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
  from {-webkit-transform:scale(0)} 
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)} 
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    width: 100%;
  }


    </style>
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
                <img src="gallery/royal.png" width="160" height="80" title="Logo" />
                <a href="http://localhost:8080/index/">HOME</a>    
                <a href="http://localhost:8080/loginpage/login/index.html">MEMBER LOGIN</a>
                <a href="#aboutus" >ABOUT US</a>
                <a class="active" href="http://localhost:8080/gallery/">GALLERY</a>
                <a href="http://localhost:8080/services/">SERVICES</a>
                <!--   <a href="#specials">SPECIALS</a> -->
                <a href="http://localhost:8080/contactus/">CONTACT US</a>
                <a href="http://localhost:8080/signuptwo/regform/index.html">SIGN UP</a>
                <a href="http://localhost:8080/reserve/booking/index.html">BOOKING</a>
                <img src="gallery/royal.png" width="160" height="80" title="Logo" /> 
                
            </div>
                
                <div>
                <img src="gallery/gallery.PNG" width="1350" height="130" title="banner" />

                </div>
                <div class="gallery">
                    
                        <img src="gallery/One.jpg" alt="Cinque Terre" width="600" height="400">
                    
                   <div class="desc">View One</div>
                </div>

                <div class="gallery">
                    
                        <img src="gallery/Two.jpg" alt="Forest" width="600" height="400">
                    
                    <div class="desc">View Two</div>
                </div>

                <div class="gallery">
                    
                        <img src="gallery/Three.jpg" alt="Northern Lights" width="600" height="400">
                   
                    <div class="desc">View Three</div>
                </div>

                <div class="gallery">
                   
                        <img src="gallery/Four.jpg" alt="Mountains" width="600" height="400">
                   
                    <div class="desc">View Four</div>
                </div>

                
                <div class="gallery">
                   
                        <img src="gallery/Five.jpg" alt="Mountains" width="600" height="400">
                   
                    <div class="desc">View Five</div>
                </div>
                
                <div class="gallery">
                   
                        <img src="gallery/Six.jpg" alt="Mountains" width="600" height="400">
                   
                    <div class="desc">View Six</div>
                </div>
                
                <div class="gallery">
                   
                        <img src="gallery/food.jpg" alt="Mountains" width="600" height="400">
                   
                    <div class="desc">View Seven</div>
                </div>
                
                <div class="gallery">
                   
                        <img src="gallery/Eight.jpg" alt="Mountains" width="600" height="400">
                   
                    <div class="desc">View Eight</div>
                </div>
                
                <div class="gallery">
                   
                        <img src="gallery/Nine.jpg" alt="Mountains" width="600" height="400">
                   
                    <div class="desc">View Nine</div>
                </div>
                
                <div class="gallery">
                   
                        <img src="gallery/Eleven.jpg" alt="Mountains" width="600" height="400">
                   
                    <div class="desc">View Ten</div>
                </div>
                
                <div class="gallery">
                   
                        <img src="gallery/Seven.jpg" alt="Mountains" width="600" height="400">
                   
                    <div class="desc">View Eleven</div>
                </div>
                
                <div class="gallery">
                   
                        <img src="gallery/Eight.jpg" alt="Mountains" width="600" height="400">
                   
                    <div class="desc">View Twelve</div>
                </div>
                
                <div class="gallery">
                   
                        <img src="gallery/view.jpg" alt="Mountains" width="600" height="400">
                   
                    <div class="desc">View thirteen</div>
                </div>
                
                <div class="gallery">
                   
                        <img src="gallery/Ten.jpg" alt="Mountains" width="600" height="400">
                   
                    <div class="desc">View fourteen</div>
                </div>
                
                
                <img id="myImg" src="gallery/One.jpg" alt="Guesti77666666666666666666666" style="width:100%;max-width:300px">
                <img id="myImg" src="gallery/Seven.jpg" alt="Snow" style="width:100%;max-width:300px">
                <img id="myImg" src="gallery/Three.jpg" alt="Snow" style="width:100%;max-width:300px">
                <img id="myImg" src="gallery/Four.jpg" alt="Snow" style="width:100%;max-width:300px">

<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01">
  <div id="caption"></div>
</div>

<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById("myImg");
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
  modal.style.display = "none";
}
</script>


                <div>
                <center>
                    <a href="#" class="fa fa-facebook"><img src="icons/facebook.png" width="25" height="25" title="facebook" /></a>
                    <a href="#" class="fa fa-google"><img src="icons/google.png" width="25" height="25" title="google+" /></a>
                    <a href="#" class="fa fa-instagram"><img src="icons/instagram.jpg" width="25" height="25" title="instagram" /></a>
                    <a href="#" class="fa fa-twitter"><img src="icons/twitter.png" width="25" height="25" title="twitter" /></a>
                    <a href="#" class="fa fa-linkedin"><img src="icons/linkedin.png" width="25" height="25" title="linkedin" /></a>
                    <a href="#" class="fa fa-youtube"><img src="icons/youtube.png" width="25" height="25" title="youtube" /></a>
                </center>
            </div>
                <div class="footer">
    <p>Copyright © The Royal Guest House | All Rights Reserved | Website Design and Development by BCZN IT SOLUTIONS</p>
</div>
                
                </body>
                </html>