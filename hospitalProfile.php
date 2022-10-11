<?php
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';
guard('login.php', 'You must login first');


$id = $_SESSION['user']['id'];


$newfilename = "user_id_{$id}_" . time();


if (isset($_FILES['image'])) {

  if (!file_exists('uploads/hospital/logo'))
    mkdir('uploads/hospital/logo', 0777, true);



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
    $path = "uploads/hospital/logo/" . $newfilename . "." . $file_ext;
    move_uploaded_file($file_tmp, $path);

    $sql = "UPDATE  `hospital` SET image = '$path' WHERE id = '$id' ";
    if ($con->query($sql)) {
      $sql = "SELECT * FROM `hospital` WHERE id = '$id' LIMIT 1";
      $result = $con->query($sql);
      $_SESSION['user']  = $result->fetch_assoc();
    }
  } else {
    print_r($errors);
  }
}



if (isset($_POST['edit_profile'])) {
  //pr($_POST, true);
  $hospital_name =  trim($_POST['hospital_name']);
  $email =  trim($_POST['email']);
  $phone =  trim($_POST['phone']);
  $type =  trim($_POST['type']);
  $address =  trim($_POST['address']);
  $division =  trim($_POST['division']);
  $city =  trim($_POST['city']);
  $upazila =  trim($_POST['upazila']);


  $sql = "UPDATE `hospital` SET `hospital_name`='$hospital_name',`email`='$email',`phone`='$phone',`type`='$type',`address`='$address',`division`='$division',`city`='$city',`upazila`='$upazila' WHERE `id` = '$id' ";

  if ($con->query($sql) == true) {
    $sql = "SELECT * FROM `hospital` WHERE id = '$id' LIMIT 1";
    $result = $con->query($sql);
    $_SESSION['user']  = $result->fetch_assoc();
    // redirect('login.php', 'Information Successfullay Updated. Please login Again to see Save Change');
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
              <a class="nav-link" href="./hospital_addDoctor.php">Add Doctor</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="./hospital_show_doctors.php">Doctor List</a>
            </li>

            <li class="nav-item">
              <a class="nav-link active" href="hospital_dashboard.php">Dashboard</a>
            </li>
          </ul>
          <a href="logout.php" class="btn btn-brand ms-lg-3">Log Out</a>
        </div>
      </div>
    </nav>
  </header>

  <main>
    <div class="container profile">
      <?php include_once 'partials/msg.php'; ?>
      <div class="picture">
        <?php
        $path = isset($_SESSION['user']['image']) ?  $_SESSION['user']['image'] : 'uploads/profile.png';

        ?>
        <img class="user-pic img-fluid" src="<?php echo $path ?>" alt="logo">


      </div>
      <div>
        <form id="profile_picture_chage_form" action="hospitalProfile.php" method="POST" enctype="multipart/form-data">
          <input type="file" style="display: none" id="image" name="image" />
          <label for="image" class="btn mt-2 profile-pic-btn">Change Profile picture</label>
        </form>
      </div>
      <div class="propertiys">
        <ul>
          <li>Name : <?php echo getUserSession('hospital_name') ?></li>
          <li>Email : <?php echo getUserSession('email') ?></li>
          <li>Phone : <?php echo getUserSession('phone') ?></li>
          <li>Hospital Type : <?php echo getUserSession('type') ?></li>
          <li>Address : <?php echo getUserSession('address') ?></li>
  
        </ul>
        <!-- Button trigger modal -->
        <button type="submit" class="btn btn-dark mb-3" data-bs-toggle="modal" data-bs-target="#editDonarInfo">
          Edit Profile
        </button>
      </div>
    </div>

    <!-- modal -->


    <div class="modal fade" id="editDonarInfo" tabindex="-1" aria-labelledby="editDonarInfoLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="editDonarInfoLabel">Edit Info</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">

            <!-- <--Form in Modal-->


            <form action="./hospitalProfile.php" method="post">
              <div class="row">
                <div class="col-12">
                  <label for="hospital_name" class="form-lable">Frist Name</label>
                  <input type="text" class="form-control" value="<?php echo getUserSession('hospital_name') ?>" name="hospital_name" id="hospital_name" required placeholder="e.g. Jack" />
                </div>

              </div>

              <label for="email" class="form-lable">E-mail</label>
              <input type="email" class="form-control" name="email" id="email" value="<?php echo getUserSession('email')  ?>" required placeholder="e.g. captain@emaxple.com" />
              <label for="phone" class="form-lable">Phone</label>
              <input type="tel" class="form-control" name="phone" id="phone" value="<?php echo getUserSession('phone')  ?>" required placeholder="e.g 01555566677" />
              <label for="type" class="form-lable">Type</label>
              <input type="tel" class="form-control" name="type" id="type" value="<?php echo getUserSession('type')  ?>" required placeholder="e.g 01555566677" />
              <label for="address" class="form-lable">Address</label>
              <input type="text" class="form-control" name="address" id="address" value="<?php echo getUserSession('address')  ?>" required placeholder="e.g. post office: New P.O" />
              <label for="division" class="form-lable">Devision</label>
              <select class="form-select" name="division" id="division">
                <option value="<?php echo getUserSession('division')  ?>" selected>
                  <?php echo getUserSession('division')  ?>
                </option>
              </select>
              <div class="row">
                <div class="col-6">
                  <label for="city" class="form-lable">District</label>
                  <select class="form-select" name="city" id="city">
                    <option value="<?php echo getUserSession('city')  ?>" selected>
                      <?php echo getUserSession('city')  ?>
                    </option>

                  </select>
                </div>
                <div class="col-6">
                  <label for="upazila" class="form-lable">Upazila</label>
                  <select class="form-select" name="upazila" id="upazila">
                    <option value="<?php echo getUserSession('upazila')  ?>" selected>
                      <?php echo getUserSession('upazila')  ?>
                    </option>
                  </select>
                </div>
              </div>

            
              <div class="text-center my-3">
                <input type="submit" value="Submit" name="edit_profile" class="btn btn-dark">
              </div>
            </form>



          </div>

        </div>
      </div>
    </div>

  </main>
  <footer class="bg-dark text-center text-white">
    <div class="container p-4 pb-0">
      <!-- Section: Social media -->
      <section class="mb-4">
        <!-- Facebook -->
        <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-facebook-f"></i></a>

        <!-- Twitter -->
        <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-twitter"></i></a>

        <!-- Google -->
        <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-google"></i></a>

        <!-- Instagram -->
        <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-instagram"></i></a>

        <!-- Linkedin -->
        <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-linkedin-in"></i></a>

      </section>
      <!-- Section: Social media -->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3 footer-last">
      © 2022 Copyright
      <a class="text-white" href="/"></a>
    </div>
    <!-- Copyright -->
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  <script src="js/script.js"></script>
  <script>
    let img = document.getElementById("image")
    img.addEventListener("change", function() {
      document.getElementById('profile_picture_chage_form').submit()
    })
  </script>
</body>

</html>