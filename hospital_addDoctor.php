<?php
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';
guard('login.php', 'You must login first');
$id = $_SESSION['user']['id'];


$newfilename = "user_id_{$id}_" . time();
if (!file_exists('uploads/doctors/image'))
mkdir('uploads/doctors/image', 0777, true);


if (isset($_POST['add_doctor'])) {
    // $newfilename = "user_id_{$id}_" . time();
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
      if(empty($errors)==true){
        $path = "uploads/doctors/image/".$newfilename.".".$file_ext;
         move_uploaded_file($file_tmp,$path);
        }

    $doctor_reg_no =  trim($_POST['doctor_reg_no']);
    $hospital_id =  trim($_POST['hospital_id']);


    $sql = "INSERT INTO `hospital_doctors`(`doctor_name`, `qulification`, `department`, `chambering_time`, `email`, `phone`, `picture`, `doctor_registration_no`,`hospital_id`) VALUES ('$doctor_name','$qualifications','$department','$chamber_time','$email','$phone','$path','$doctor_reg_no','$hospital_id')";




    if ($con->query($sql) == true) {
        redirect('hospital_addDoctor.php', 'The Doctor is Successfullay added your Hospital');
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
                            <a class="nav-link" href="hospitalProfile.php">Hospital Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="hospital_addDoctor.php">Add Doctor</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./hospital_show_doctors.php">Doctor List</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./hospital_dashboard.php">Dashboard</a>
                        </li>
                    </ul>
                    <a href="logout.php" class="btn btn-brand ms-lg-3">Log Out</a>
                </div>
            </div>
        </nav>
    </header>

    <main>

        <div id="blood-request">
            <div class="container">
                <?php include_once 'partials/msg.php' ?>
                <div class="row">
                    <div class="col-lg-6 d-none d-lg-block">
                        <div class="pt-2 position-fixed">
                            <div class="text-center mt-4">
                                <img class="img-fluid flat-image mb-3" src="img/add-friend.png" alt="" />
                            </div>
                            <h2>ADD Doctor</h2>
                        </div>

                        <p class="test position-fixed col-5 my-3">
                            Lorem, ipsum. Lorem ipsum dolor, sit amet consectetur
                            adipisicing elit. Dolores error hic blanditiis, molestias
                            assumenda adipisci quae sed accusantium inventore velit? quasi
                            officiis reiciendis natus, consectetur unde?
                        </p>
                    </div>
                    <div class="col-lg-6 mb-5 form-content py-5">
                        <form method="POST" action="hospital_addDoctor.php" enctype="multipart/form-data">
                            <label for="doctor_name" class="form-lable">Doctor Name</label>
                            <input type="text" class="form-control" name="doctor_name" id="doctor_name" required placeholder="e.g. Dr. Maria" />

                            <label for="qualifications" class="form-lable">Qualifications</label>
                            <input type="text" class="form-control" name="qualifications" id="qualifications" placeholder="MBBS, FCPS (Medicine) etc" required />

                            <label for="department" class="form-lable">department</label>
                            <input type="text" class="form-control" name="department" id="department" placeholder="Medicine" required />

                            <label for="chamber_time" class="form-lable">chamber_time</label>
                            <input type="text" class="form-control" name="chamber_time" id="chamber_time" placeholder="e.g. Fri-Sun [09 AM - 2PM]  " required />

                            <label for="email" class="form-lable">email</label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="e.g.  " required />
                            <label for="phone" class="form-lable">phone</label>
                            <input type="text" class="form-control" name="phone" id="phone" placeholder="e.g. something@mail.com  " required />

                            <label for="image" class="form-lable">image</label>
                            <input type="file" class="form-control" name="image" id="image"   " />


                            <label for="doctor_reg_no" class="form-lable">Doctor Registration:</label>
                            <input type="text" class="form-control" name="doctor_reg_no" id="doctor_reg_no" required placeholder="12345" />

                            <input type="hidden" name="hospital_id" value="<?php echo $id ?>">

                            <div class="text-center my-3">
                                <input type="submit" value="Submit" name="add_doctor" class="btn btn-dark">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <?php include_once 'partials/footer.php' ?>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>