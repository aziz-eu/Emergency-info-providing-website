<?php
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';
guard('login.php', 'You must login first');

$id = $_SESSION['user']['id'];





if (isset($_POST['edit_ambulance_profile'])) {
  //pr($_POST, true);
  $org_name =  trim($_POST['org_name']);
  $email =  trim($_POST['email']);
  $phone =  trim($_POST['phone']);
  $address =  trim($_POST['address']);
  $division =  trim($_POST['division']);
  $city =  trim($_POST['city']);
  $upazila =  trim($_POST['upazila']);
  $status =  trim($_POST['status']);

  $sql = "UPDATE `ambulance_registration` SET `org_name`='$org_name',`email`='$email',`phone`='$phone',`address`='$address',`division`='$division',`city`='$city',`upazila`='$upazila',`status`='$status' WHERE `id` ='$id' ";

  if ($con->query($sql) == true) {
    $sql = "SELECT * FROM `ambulance_registration` WHERE id = '$id' LIMIT 1";
    $result = $con->query($sql);
    $_SESSION['user']  = $result->fetch_assoc();
    // redirect('login.php', 'Information Successfullay Updated. Please login Again to see Save Change');
  } else {
    echo "Error: " . $sql . "<br>" . $con->error;
  }
}


// logo 

if (isset($_POST['update_ambulance_count'])) {
  //pr($_POST, true);
  $ac_ambulance =  trim($_POST['ac_ambulance']);
  $non_ac_ambulance =  trim($_POST['non_ac_ambulance']);
  $icu_ambulance =  trim($_POST['icu_ambulance']);
  $hdu_ambulance =  trim($_POST['hdu_ambulance']);
  $air_ambulance =  trim($_POST['air_ambulance']);
  $frezing_ambulance =  trim($_POST['frezing_ambulance']);


  $sql = "UPDATE `ambulance_registration` SET `ac`='$ac_ambulance',`non_ac`='$non_ac_ambulance',`air`='$air_ambulance',`icu`='$icu_ambulance',`hdu`='$hdu_ambulance',`frezing`='$frezing_ambulance' WHERE `id` = '$id' ";

  if ($con->query($sql) == true) {
    $sql = "SELECT * FROM `ambulance_registration` WHERE id = '$id' LIMIT 1";
    $result = $con->query($sql);
    $_SESSION['user']  = $result->fetch_assoc();
    // redirect('login.php', 'Information Successfullay Updated. Please login Again to see Save Change');
  } else {
    echo "Error: " . $sql . "<br>" . $con->error;
  }
}


$newfilename = "user_id_{$id}_" . time();
if (isset($_FILES['image'])) {

  if (!file_exists('uploads/ambulance/logo'))
    mkdir('uploads/ambulance/logo', 0777, true);



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
    $path = "uploads/ambulance/logo/" . $newfilename . "." . $file_ext;
    move_uploaded_file($file_tmp, $path);

    $sql = "UPDATE  `ambulance_registration` SET image = '$path' WHERE id = '$id' ";
    if ($con->query($sql)) {
      $sql = "SELECT * FROM `ambulance_registration` WHERE id = '$id' LIMIT 1";
      $result = $con->query($sql);
      $_SESSION['user']  = $result->fetch_assoc();
    }
  } else {
    print_r($errors);
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
    <nav class="navbar navbar-expand-lg  bg-white">
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
              <a class="nav-link active" href="./ambulance_profile.php">Profile</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="./ambulance_deshboard.php">Deshboard</a>
            </li>
          </ul>
          <a href="logout.php" class="btn btn-brand ms-lg-3">Log Out</a>
        </div>
      </div>
    </nav>
  </header>

  <main>
    <div class="container profile">
      <div class="picture">
        <?php
        $path = isset($_SESSION['user']['image']) ?  $_SESSION['user']['image'] : 'uploads/profile.png';

        ?>
        <img class="user-pic img-fluid" src="<?php echo $path ?>" alt="user_pic">


      </div>
      <div>
        <form id="logo_change_form_ambulance" action="./ambulance_profile.php" method="POST" enctype="multipart/form-data">
          <input type="file" style="display: none" id="image" name="image" />
          <label for="image" class="btn mt-2 profile-pic-btn">Change Logo</label>
        </form>
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="propertiys profle">
            <ul>
              <li>Organization Name : <?php echo getUserSession('org_name') ?></li>
              <li>Phone : <?php echo getUserSession('phone')  ?></li>
              <li>E-mail : <?php echo getUserSession('email')  ?></li>
              <li>Address :<?php echo getUserSession('address')  ?>, <?php echo getUserSession('city')  ?>, Division: <?php echo getUserSession('division')  ?></li>
              <li>Status : <?php echo getUserSession('status')  ?></li>

            </ul>
            <!-- modal btn -->
            <button type="submit" class="btn btn-dark mb-3" data-bs-toggle="modal" data-bs-target="#editAmbulanceInfo">
              Edit Profile
            </button>
          </div>

        </div>
        <div class="col-lg-6 text-center ">
          <h3>Available Ambulances</h3>
          <div class="abubulance_edit">
          <ul class="text-start ">
            <li>AC Ambulance&nbsp; : <?php echo getUserSession('ac') ?>&nbsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;Non-AC Ambulance &nbsp;: <?php echo getUserSession('non_ac') ?></li>
            <li>ICU Ambulance : <?php echo getUserSession('icu') ?>&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;HDU Ambulance&emsp;&emsp;: <?php echo getUserSession('hdu') ?></li>
            <li>Air Ambulance &nbsp;: <?php echo getUserSession('air') ?>&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Frezing Ambulance &nbsp;&nbsp;&nbsp;: <?php echo getUserSession('frezing') ?></li>

          </ul>
          <button type="submit" class="btn btn-dark mb-3" data-bs-toggle="modal" data-bs-target="#ambulance_count">
              Update
            </button>
          </div>
        </div>
      </div>
    </div>

    <!-- edit profile modal -->
    <div class="modal fade" id="editAmbulanceInfo" tabindex="-1" aria-labelledby="editAmbulanceInfo" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="editDonarInfoLabel">Modal title</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">

            <!-- <--Form in Modal-->


            <form action="./ambulance_profile.php" method="POST">
              <label for="org_name" class="form-lable">Organization Name</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('org_name') ?>" name="org_name" id="org_name" />

              <label for="email" class="form-lable">E-mail</label>
              <input type="email" class="form-control" name="email" id="email" value="<?php echo getUserSession('email')  ?>" required placeholder="e.g. captain@emaxple.com" />
              <label for="phone" class="form-lable">Phone</label>
              <input type="tel" class="form-control" name="phone" id="phone" value="<?php echo getUserSession('phone')  ?>" required placeholder="e.g 01555566677" />
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
                  <label for="city" class="form-lable">City</label>
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
                <label for="status" class="form-lable">Status</label>
                <input type="text" class="form-control" value="<?php echo getUserSession('status') ?>" name="status" id="status" placeholder="e.g. replay within -- minites" />
              </div>

              <div class="text-center my-3">
                <input type="submit" value="Submit" name="edit_ambulance_profile" class="btn btn-dark">
              </div>
            </form>



          </div>

        </div>
      </div>
    </div>


    <!-- Update Ambulance Count -->

    <div class="modal fade" id="ambulance_count" tabindex="-1" aria-labelledby="updateBlood" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="editDonarInfoLabel">Available Number of Ambulance</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">

            <!-- <-- Update ambulance count Form in Modal-->


            <form action="./ambulance_profile.php" method="POST">

            <div class="row">


              <div class="col-6">          
              <label for="ac_ambulance " class="form-lable">AC Ambulance</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('ac') ?>" name="ac_ambulance" id="ac_ambulance" /> </div>
              <div class="col-6">
              <label for="non_ac_ambulance" class="form-lable">non_ac_ambulance</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('non_ac') ?>" name="non_ac_ambulance" id="non_ac_ambulance" /></div>

            <div class="col-6">

              <label for="icu_ambulance " class="form-lable">ICU Ambulance</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('icu') ?>" name="icu_ambulance" id="icu_ambulance" />
              </div>
              <div class="col-6">
              <label for="hdu_ambulance" class="form-lable">HDU Ambulance</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('hdu') ?>" name="hdu_ambulance" id="hdu_ambulance" /></div>

              <div class="col-6">
          
              <label for="air_ambulance " class="form-lable">Air Ambulance</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('air') ?>" name="air_ambulance" id="air_ambulance" /></div>
              <div class="col-6">
              <label for="frezing_ambulance" class="form-lable">Frezing Ambulance</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('frezing') ?>" name="frezing_ambulance" id="frezing_ambulance" /></div>

              </div>
          
            </div>

          <div class="text-center my-3">
            <input type="submit" value="Update" name="update_ambulance_count" class="btn btn-dark">
          </div>
          </form>



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

        <!-- Github -->
        <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-github"></i></a>
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
  <script>
    let img = document.getElementById("image")
    img.addEventListener("change", function() {
      document.getElementById('logo_change_form_ambulance').submit()
    })
  </script>
</body>

</html>