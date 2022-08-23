<?php
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';
// guard('login.php', 'You must login first');

if (isset($_POST['policeSerch'])) {
    $division = trim($_POST['division']);
    $city = trim($_POST['city']);
    $upazila = trim($_POST['upazila']);

    $sql = "SELECT * FROM `police` WHERE division = '$division' AND  city = '$city' AND upazila = '$upazila' ";
    $results = $con->query($sql);

    if ($results->num_rows == 0)
        redirect('police.php', 'No results found', 'danger');
} else {
    redirect('police.php');
}



?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/style.css" />

    <title>Info & Help</title>
</head>

<body>

    <?php include_once 'partials/navbar.php' ?>
    <main>
        <div class="container">
            <div class="row">
                <?php while ($row = $results->fetch_assoc()) : ?>

                    <div class="col-6  d-block d-lg-flex">
                        <div class="blook-bank-card propertiys">
                            <h2><?php echo $row['branch_name'] ?></h2>
                            <ul>
                                <li>Phone : <?php echo $row['phone'] ?></li>
                                <li>Email: <?php echo $row['email'] ?></li>
                                <li>Address : <?php echo $row['location'] ?>, <?php echo $row['upazila'] ?> , <?php echo $row['city'] ?></li>
                                </li>
                            </ul>

                           
                        </div>


                    </div>
            </div>
        <?php endwhile ?>
        </div>
        </div>
    </main>

    <?php include_once 'partials/footer.php' ?>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>