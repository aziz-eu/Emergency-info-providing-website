<?php
    $con = mysqli_connect("localhost","root","","emergency_info_providing_system");

    // Check connection
    if (mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        exit();
    }
?>