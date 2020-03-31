<!DOCTYPE html>
<?php
session_start();
$_SESSION = array();
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(
        session_name(),
        '',
        time() - 60 * 60,
        $params["path"],
        $params["domain"],
        $params["secure"],
        $params["httponly"]
    );
}
unset($_SESSION['login']);
session_destroy(); // destroy session
?>
<html lang="en">

<head>
    <title>Contact Page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Lobster&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://imakewebthings.github.com/jquery-waypoints/waypoints.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.js" integrity="sha256-w49DIDk8itgSjjuoof5lTxYKwcjWJ7Z2sRW3nU1StNA=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="js/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/shortcuts/inview.js" integrity="sha256-lZnJXv4iTfqLpnfAHnr1A6+LUpc8wHU33pwJYJhjQ6A=" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Alata&display=swap" rel="stylesheet">
</head>
<script>
    var width = $(window).width();
    var height = $(window).height();

    function shiva() {

        var conh = document.getElementById("con").offsetHeight;

        document.getElementById("CarB").style.height = height + "px";
        document.getElementById("con").style.top = ((height / 2) - (conh / 2)) + "px";
    }

    function bhover() {
        document.getElementById("CarB").style.transition = "all 0.4s ease";
        document.getElementById("CarB").style.backgroundImage = "url('bike.jpg')";
        document.getElementById("CarB").style.backgroundPositionY = "-10px";


        // document.getElementById("BikeB").zIndex = 999;
        // document.getElementById("CarB").style.zIndex = -1000;
    }

    function chover() {

        document.getElementById("CarB").style.backgroundImage = "url('car.jpg')";
        document.getElementById("CarB").style.backgroundPositionY = "-160px";
        document.getElementById("CarB").style.transition = "all 0.4s ease";

    }
</script>
<style>
    ::-webkit-scrollbar {
        display: none;
    }




    label {
        position: relative;
        font-family: 'Alata', sans-serif;
    }


    #CarB {

        overflow: hidden;
        height: 600px;
        z-index: 500;
        width: 100%;
        position: fixed;
        background-image: url('car.jpg');
        background-repeat: no-repeat;
        background-position-y: -160px;
        background-size: cover;
    }

    .btn {
        background: transparent;
        border: transparent;
        transition: all 0.5s;
        outline: none;
    }

    .btn:focus {
        outline: none;
    }

    .btn:hover {
        outline: none;
        background: transparent;
        border: transparent;
        transform: rotate(0deg) scale(1.1);
        transition: all 0.5s;
    }

    #svg {
        position: relative;
        height: 400px;
        width: 100%;
    }

    ul {
        text-decoration: none;
        list-style: none;
        display: flex;
        color: white;
        justify-content: space-around;
    }

    #b {

        color: white;
        height: 100%;
        font-family: 'Alata', sans-serif;
        position: relative;
        width: 100%;
        text-align: center;
        position: fixed;
        z-index: 1000;
        background: rgba(0, 0, 0, 0.4);
    }

    #con {
        position: relative;
    }
</style>

<body onload="shiva()" onresize="change()">
    <div id="b">

        <div id="con" class="row">



            <ul id="ul">
                <li>

                    <a href="./bikerental"><button class="btn btn-primary" onmouseover="bhover()"><i style="font-size:100px" class="fas fa-motorcycle"></i></button></a>

                </li>
                <li>
                    <h2>Welcome to the site <br> Choose your portal to proceed</h2>
                </li>
                <li>

                    <a href="./carrentalproject/carrental"><button class="btn btn-primary" onmouseover="chover()"><i style="font-size:100px" class="fas fa-car"></i></button></a>

                </li>
            </ul>
        </div>
    </div>
    <div id="CarB">
        <div>

        </div>
    </div>

</body>


</html>