<?php 
  include_once 'includes/function.php';
  include_once 'includes/session.php';
  include_once 'config/db.php';
  guard('login.php', 'You must login first');

  $hospital_name = $_SESSION['user']['hospital_name'];
//   $upazila = $_SESSION['user']['upazila'];
//   $blood_group = $_SESSION['user']['blood_group'];

//   $sql = "SELECT * FROM `blood_request` WHERE blood_group = '$blood_group' AND  city = '$city' AND upazila = '$upazila' ";

//   $results = $con->query($sql);

?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="css/style.css" />

    <title>Info & Help</title>
  </head>

  <body>
    <header class="sticky-top">
      <nav class="navbar navbar-expand-lg bg-white">
        <div class="container">
          <a class="navbar-brand" href="index.php"
            >Emergency Info <span>&</span> Help</a
          >
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="index.php"
                  >Home</a
                >
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
                <a class="nav-link active" href="hospital_dashboard.php"
                  >Deshboard</a
                >
              </li>
            </ul>
            <a href="logout.php" class="btn btn-brand ms-lg-3">Log Out</a>
          </div>
        </div>
      </nav>
    </header>

    <main>
      <div class="container deshboard">
        <?php include_once 'partials/msg.php' ?>
        <h2 class="my-2"><?php echo $hospital_name ?></h2>
      </div>
    </main>
    <?php include_once 'partials/footer.php' ?>

    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
      integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
