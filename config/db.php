<?php 

    define('DB_HOST', 'localhost');
    define('DB_USER', 'root');
    define('DB_PASSWORD', '');
    define('DB_NAME', 'emergency_info_providing_system');

    $con = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

    // connection Check
    if (mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        exit();
    }
?>