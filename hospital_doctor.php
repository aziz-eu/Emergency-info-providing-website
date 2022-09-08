<?php

include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';
$hid = $_GET['h_id'];

$find_hospital_name = "SELECT hospital_name FROM `hospital` WHERE `id` = '$hid'";
$hospital_name = $con->query($find_hospital_name);

$department = "SELECT DISTINCT department FROM `hospital_doctors` WHERE `hospital_id` = '$hid' ORDER BY department ASC";
$departments = $con->query($department);




if (!isset($_GET['h_id'])) {
    redirect('hospital.php', 'No results found', 'danger');
}




if (isset($_GET['h_id'])) {

    $sql = "SELECT * FROM `hospital_doctors` WHERE `hospital_id` = '$hid' ";
    $results = $con->query($sql);
} else {
    redirect('hospital.php');
}

if (isset($_GET['filterDepartment'])) {

    $department = trim($_GET['department']);
    $hospital_id = trim($_GET['h_id']);



    if ($department!=NULL){
  
    $sql = "SELECT * FROM `hospital_doctors` WHERE `hospital_id` = '$hospital_id' AND  `department` LIKE '$department' ";
    $results = $con->query($sql);
    }
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
            <div class="row my-3">

                <!-- Doctor logo -->
                <div class="col-3 mx-5 flat-image">
                    <div class="flat-image">
                        <img src="img/medical-team.png" alt="">
                    </div>
                </div>
                <div class="col-lg-6 my-2"></div>
                <div class="col-4">
                    <form action="hospital_doctor.php" method="get">
                        <input type="hidden" name="h_id" value="<?php echo $hid ?>">
                        <div class="d-flex">
                            <select class="form-select" name="department" id="department">
                                <option value="" selected>Select Department</option>
                                <?php while ($row = $departments->fetch_assoc()) : ?>
                                    <option value="<?php echo $row['department']; ?>">
                                        <?php echo $row['department']; ?>

                                    </option>
                                <?php endwhile ?>
                            </select>
                            <button type="submit" name="filterDepartment" class="btn btn-dark ms-2">filter</button>
                        </div>
                    </form>


                    </select>
                </div>
            </div>

            <h3>Doctor List of : <?php while ($row = $hospital_name->fetch_assoc()) {
                                        echo $row['hospital_name'];
                                        break;
                                    }  ?> </h3>
            <div class="row">

                <?php while ($row = $results->fetch_assoc()) : ?>
                    <div class="col-lg-6 d-block d-lg-flex">

                        <div class="blook-bank-card propertiys">

                            <div class="row">
                                <div class="col-4">
                                    <img class="doctor-image" src="<?php echo $row['picture'] ?>" alt="">
                                </div>
                                <div class="col-8">

                                    <h4><?php echo $row['doctor_name'] ?></h4>
                                    <p>Qualifications:<?php echo $row['qulification'] ?></p>
                                    <p>Specialty: <?php echo $row['department'] ?></p>
                                    <p>Chamber Time: <?php echo $row['chambering_time'] ?></p>


                                </div>

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