<?php
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';
guard('login.php', 'You must login first');
$id = $_SESSION['user']['id'];
$h_name = $_SESSION['user']['hospital_name'];


$sql = "SELECT * FROM hospital_doctors WHERE `hospital_id` ='$id'";
$results = $con->query($sql);
$newfilename = "user_id_{$id}_" . time();

if (isset($_POST['editDoctor'])) {

    //pr($_POST, true);
    $doctor_name =  trim($_POST['doctor_name']);
    $qualifications =  trim($_POST['qualifications']);
    $department =  trim($_POST['department']);
    $chamber_time =  trim($_POST['chamber_time']);
    $email =  trim($_POST['email']);
    $phone =  trim($_POST['phone']);

    $errors = array();
    $file_name = $_FILES['image']['name'];
    $file_size = $_FILES['image']['size'];
    $file_tmp = $_FILES['image']['tmp_name'];
    $file_type = $_FILES['image']['type'];
    $file_ext = explode('.', $_FILES['image']['name']);
    $file_ext = strtolower(end($file_ext));

    $expensions = array("jpeg", "jpg", "png");
    if (file_exists($file_name)) {
        echo "Sorry, file already exists.";
    }
    if (in_array($file_ext, $expensions) === false) {
        $errors[] = "extension not allowed, please choose a JPEG or PNG file.";
    }

    if ($file_size > 2097152) {
        $errors[] = 'File size must be excately 2 MB';
    }
    if (empty($errors) == true) {
        $path = "uploads/doctors/image/" . $newfilename . "." . $file_ext;
        move_uploaded_file($file_tmp, $path);
    }

    $doctor_reg_no =  trim($_POST['doctor_reg_no']);
    $doctor_id =  trim($_POST['doctor_id']);

    if ($path != null) {
        $sql = "UPDATE `hospital_doctors` SET `doctor_name`='$doctor_name',`qulification`='$qualifications',`department`='$department',`chambering_time`='$chamber_time',`email`='$email',`phone`='$phone',`picture`='$path',`doctor_registration_no`='$doctor_reg_no' WHERE `id` = '$doctor_id'";
    }
    else{

        $sql = "UPDATE `hospital_doctors` SET `doctor_name`='$doctor_name',`qulification`='$qualifications',`department`='$department',`chambering_time`='$chamber_time',`email`='$email',`phone`='$phone',`doctor_registration_no`='$doctor_reg_no' WHERE `id` = '$doctor_id'";

    }


    if ($con->query($sql) == true) {
        redirect('hospital_show_doctors.php', 'The Doctor info updateted');
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
    }
}


if (isset($_GET['delete'])) {
    $doctor_id = $_GET['delete'];

    // $sql = "DELETE FROM `hospital_doctors` WHERE `id` = '$doctor_id' AND  	`hospital_id` = '$id' ";
    // $result = mysqli_query($conn, $sql);
    if ($con->query($sql) == true) {
        //   $sql = "SELECT * FROM `hospital_doctors`";
        //   $result = $con->query($sql);
        //   $_SESSION['user']  = $result->fetch_assoc();
        // redirect('hospital_show_doctors.php', ' Successfullay Deleted.');
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
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

    <link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>Info & Help</title>
</head>

<body>
    <header class="sticky-top">
        <nav class="navbar navbar-expand-lg bg-white">
            <div class="container">
                <a class="navbar-brand" href="index.php">Emergency Info <span>&</span> Help</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="index.php">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="hospital_profile.php">Hospital Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="hospital_addDoctor.php">Add Doctor</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./hospital_show_doctors.php">Doctor List</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./hospital_dashboard.php">Deshboard</a>
                        </li>
                    </ul>
                    <a href="logout.php" class="btn btn-brand ms-lg-3">Log Out</a>
                </div>
            </div>
        </nav>
    </header>

    <main>
        <div class="container">
            <?php include_once('./partials/msg.php') ?>
            <h4 class="mt-3">All Doctor of : <?php echo $h_name ?></h4>

            <div>
              
                    <table class="table table-striped" id="doctorList">
                        <thead>
                            <tr>
                                <th scope="col">Sl no</th>
                                <th scope="col">Doctor Name</th>
                                <th scope="col">Qulification</th>
                                <th scope="col">Department</th>
                                <th scope="col">chambering Time</th>
                                <th scope="col">email</th>
                                <th scope="col">phone</th>
                                <th scope="col">Reg no</th>
                                <th scope="col">Picture</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php while ($row = $results->fetch_assoc()) : ?>
                        
                            <tr>
                                <th scope="row">
                                </th>
                                <th scope="row">
                                    <?php echo $row['doctor_name'] ?>
                                </th>
                                <td><?php echo $row['qulification'] ?></td>
                                <td><?php echo $row['department'] ?></td>
                                <td><?php echo $row['chambering_time'] ?></td>
                                <td><?php echo $row['email'] ?></td>
                                <td><?php echo $row['phone'] ?></td>

                                <td><?php echo $row['doctor_registration_no'] ?></td>
                                <td><img src="<?php echo $row['picture'] ?>" alt="" height="40px" width="40px"></td>
                                <td><button type="button" class="btn btn-sm btn-dark doctor_btn" data-bs-toggle="modal" data-bs-target="#editFire_<?php echo $row['id'] ?>">
                                        <i class="fa-solid fa-pen-to-square"></i>
                                    </button>  <button class='delete btn btn-sm btn-danger doctor_btn' id="<?php echo $row['id'] ?>"><i class=" fa-solid fa-trash"></i></button></td>


                            </tr>


                        </tbody>

                        
                        <div class=" modal fade" id="editFire_<?php echo $row['id'] ?>" tabindex="-1" aria-labelledby="edit_fire_service_info" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="edit_fire_service_info">Edit Info</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">


                                    <form method="POST" action="./hospital_show_doctors.php" enctype="multipart/form-data">
                                        <label for="doctor_name" class="form-lable">Doctor Name</label>
                                        <input type="text" value="<?php echo $row['doctor_name'] ?>" class="form-control" name="doctor_name" id="doctor_name" required placeholder="e.g. Maria" />

                                        <label for="qualifications" class="form-lable">Qualifications</label>
                                        <input type="text" class="form-control" name="qualifications" id="qualifications" placeholder="MMBS" required value="<?php echo $row['qulification'] ?>" />


                                        <label for="department" class="form-lable">department</label>
                                        <input type="text" class="form-control" name="department" id="department" value="<?php echo $row['department'] ?>" placeholder="MMBS" required />

                                        <label for="chamber_time" class="form-lable">chamber_time</label>
                                        <input type="text" class="form-control" name="chamber_time" id="chamber_time" value="<?php echo $row['chambering_time'] ?>" placeholder="e.g.  " required />

                                        <label for="email" class="form-lable">email</label>
                                        <input type="email" class="form-control" name="email" id="email" value="<?php echo $row['email'] ?>" placeholder="e.g.  " required />
                                        <label for="phone" class="form-lable">phone</label>
                                        <input type="text" class="form-control" name="phone" id="phone" value="<?php echo $row['phone'] ?>" placeholder="e.g.  " required />

                                        <label for="image" class="form-lable">image</label>
                                        <input type="file" class="form-control" name="image" id="image" value="<?php echo $row['picture'] ?>" />


                                        <label for="doctor_reg_no" class="form-lable">Doctor Registration:</label>
                                        <input type="text" class="form-control" name="doctor_reg_no" id="doctor_reg_no" value="<?php echo $row['doctor_registration_no'] ?>" required placeholder="" />

                                        <input type="hidden" name="doctor_id" value="<?php echo $row['id'] ?>">

                                        <div class="text-center my-3">
                                            <input type="submit" value="Submit" name="editDoctor" class="btn btn-dark">
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>

                <?php endwhile ?>
                    </table>

                 
            </div>





        </div>


    </main>

    <?php include_once 'partials/footer.php' ?>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>




    <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#doctorList').DataTable();
        });
    </script>

<script>
        deletes = document.getElementsByClassName('delete');
        Array.from(deletes).forEach((element) => {
            element.addEventListener("click", (e) => {
                let id = e.target.id.substr(0);
                console.log(id)

                if (confirm("Are you sure you want to delete!")) {
                    console.log("yes");
                    window.location = `hospital_show_doctors.php?delete=${id}`;
                } else {
                    console.log("no");
                }
            })
        })
    </script>
</body>

</html>