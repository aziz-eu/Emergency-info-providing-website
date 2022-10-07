<?php
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';
guard('login.php', 'You must login first');

$id = $_SESSION['user']['id'];


$newfilename = "user_id_{$id}_" . time();


if (isset($_FILES['image'])) {

  if (!file_exists('uploads/bbank/logo'))
    mkdir('uploads/bbank/logo', 0777, true);



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
    $path = "uploads/bbank/logo/" . $newfilename . "." . $file_ext;
    move_uploaded_file($file_tmp, $path);

    $sql = "UPDATE  `blood_bank` SET image = '$path' WHERE id = '$id' ";
    if ($con->query($sql)) {
      $sql = "SELECT * FROM `blood_bank` WHERE id = '$id' LIMIT 1";
      $result = $con->query($sql);
      $_SESSION['user']  = $result->fetch_assoc();
    }
  } else {
    print_r($errors);
  }
}



if (isset($_POST['edit_bbank_profile'])) {
  //pr($_POST, true);
  $bank_name =  trim($_POST['bank_name']);
  $email =  trim($_POST['email']);
  $phone =  trim($_POST['phone']);
  $address =  trim($_POST['address']);
  $division =  trim($_POST['division']);
  $city =  trim($_POST['city']);
  $upazila =  trim($_POST['upazila']);
  $status =  trim($_POST['status']);

  $sql = "UPDATE `blood_bank` SET `bank_name`='$bank_name',`email`='$email',`phone`='$phone',`address`='$address',`division`='$division',`city`='$city',`upazila`='$upazila',`status`='$status' WHERE `id` ='$id' ";

  if ($con->query($sql) == true) {
    $sql = "SELECT * FROM `blood_bank` WHERE id = '$id' LIMIT 1";
    $result = $con->query($sql);
    $_SESSION['user']  = $result->fetch_assoc();
    // redirect('login.php', 'Information Successfullay Updated. Please login Again to see Save Change');
  } else {
    echo "Error: " . $sql . "<br>" . $con->error;
  }
}
if (isset($_POST['update_blood_count'])) {
  //pr($_POST, true);
  $aviable_a_positive =  trim($_POST['aviable_a_positive']);
  $aviable_a_negative =  trim($_POST['aviable_a_negative']);
  $aviable_b_positive =  trim($_POST['aviable_b_positive']);
  $aviable_b_negative =  trim($_POST['aviable_b_negative']);
  $aviable_o_positive =  trim($_POST['aviable_o_positive']);
  $aviable_o_negative =  trim($_POST['aviable_o_negative']);
  $aviable_ab_positive =  trim($_POST['aviable_ab_positive']);
  $aviable_ab_negative =  trim($_POST['aviable_ab_negative']);

  $sql = "UPDATE `blood_bank` SET `aviable_a_positive`='$aviable_a_positive',`aviable_a_negative`='$aviable_a_negative',`aviable_b_positive`='$aviable_b_positive',`aviable_b_negative`='$aviable_b_negative',`aviable_ab_positive`='$aviable_ab_positive',`aviable_ab_negative`='$aviable_ab_negative',`aviable_o_positive`='$aviable_o_positive',`aviable_o_negative`='$aviable_o_negative'  WHERE `id`= '$id' ";

  if ($con->query($sql) == true) {
    $sql = "SELECT * FROM `blood_bank` WHERE id = '$id' LIMIT 1";
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
              <a class="nav-link active" href="./blood_bank_profile.php">Profile</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="./blood_bank_deshboard.php">Deshboard</a>
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
        <form id="logo_change_form" action="./blood_bank_profile.php" method="POST" enctype="multipart/form-data">
          <input type="file" style="display: none" id="image" name="image" />
          <label for="image" class="btn mt-2 profile-pic-btn">Change Logo</label>
        </form>
      </div>
      <div class="row">
        <div class="col-lg-6">

          <div class="propertiys">
            <ul>
              <li>Blood Bank Name : <?php echo getUserSession('bank_name') ?></li>
              <li>Phone : <?php echo getUserSession('phone')  ?></li>
              <li>E-mail : <?php echo getUserSession('email')  ?></li>
              <li>Address : <?php echo getUserSession('city')  ?>, Division: <?php echo getUserSession('division')  ?></li>
              <li>Status : <?php echo getUserSession('status') ?></li>
            </ul>
            <button type="submit" class="btn btn-dark mb-3" data-bs-toggle="modal" data-bs-target="#editBbankInfo">
              Edit Profile
            </button>
          </div>

        </div>
        <div class="col-lg-6 text-center">
          <h2>Available Blood</h2>
          <ul class="aviable_blood">
            <li>A+: <?php echo getUserSession('aviable_a_positive') ?></li>
            <li>A-: <?php echo getUserSession('aviable_a_negative') ?></li>
            <li>B+: <?php echo getUserSession('aviable_b_positive') ?></li>
            <li>B-: <?php echo getUserSession('aviable_b_negative') ?></li>
          </ul>
          <ul class="aviable_blood">

            <li>O+: <?php echo getUserSession('aviable_o_positive') ?></li>
            <li>O-: <?php echo getUserSession('aviable_o_negative') ?></li>
            <li>AB+: <?php echo getUserSession('aviable_ab_positive') ?></li>
            <li>AB-: <?php echo getUserSession('aviable_ab_negative') ?></li>
          </ul>
          <button type="submit" class="btn btn-dark mb-3" data-bs-toggle="modal" data-bs-target="#update_blood">
            Update
          </button>
        </div>
      </div>




    </div>


    <!-- Profile edit -->
    <div class="modal fade" id="editBbankInfo" tabindex="-1" aria-labelledby="updateBlood" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="editDonarInfoLabel">Modal title</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">

            <!-- <--Form in Modal-->


            <form action="./blood_bank_profile.php" method="POST">
              <label for="bank_name" class="form-lable">Blood Bank Name</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('bank_name') ?>" name="bank_name" id="bank_name" />

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
                <input type="submit" value="Submit" name="edit_bbank_profile" class="btn btn-dark">
              </div>
            </form>



          </div>

        </div>
      </div>
    </div>

    <!-- blood_update -->
    <div class="modal fade" id="update_blood" tabindex="-1" aria-labelledby="updateBlood" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="editDonarInfoLabel">Update Blood</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">

            <!-- <-- Update Blood Form in Modal-->


            <form action="./blood_bank_profile.php" method="POST">

            <div class="row">

            <div class="col-6">

              <label for="aviable_a_positive " class="form-lable">A+</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('aviable_a_positive') ?>" name="aviable_a_positive" id="aviable_a_positive" /></div>
              <div class="col-6">
              <label for="aviable_a_negative" class="form-lable">A-</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('aviable_a_negative') ?>" name="aviable_a_negative" id="aviable_a_negative" /></div>

              <div class="col-6">
          
              <label for="aviable_b_positive " class="form-lable">B+</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('aviable_b_positive') ?>" name="aviable_b_positive" id="aviable_b_positive" /> </div>
              <div class="col-6">
              <label for="aviable_b_negative" class="form-lable">B-</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('aviable_b_negative') ?>" name="aviable_b_negative" id="aviable_b_negative" /></div>

            <div class="col-6">

              <label for="aviable_o_positive " class="form-lable">O+</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('aviable_o_positive') ?>" name="aviable_o_positive" id="aviable_o_positive" />
              </div>
              <div class="col-6">
              <label for="aviable_o_negative" class="form-lable">O-</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('aviable_o_negative') ?>" name="aviable_o_negative" id="aviable_o_negative" /></div>

              <div class="col-6">
          
              <label for="aviable_ab_positive " class="form-lable">O+</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('aviable_ab_positive') ?>" name="aviable_ab_positive" id="aviable_ab_positive" /></div>
              <div class="col-6">
              <label for="aviable_ab_negative" class="form-lable">O-</label>
              <input type="text" class="form-control" value="<?php echo getUserSession('aviable_ab_negative') ?>" name="aviable_ab_negative" id="aviable_o_negative" /></div>

              </div>
          
            </div>

          <div class="text-center my-3">
            <input type="submit" value="Update" name="update_blood_count" class="btn btn-dark">
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

        <!-- Github -->
    
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
      document.getElementById('logo_change_form').submit()
    })
  </script>
</body>

</html>