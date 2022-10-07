<?php
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';
guard('login.php', 'You must login first');

$id = $_SESSION['user']['id'];

$sql = "SELECT * FROM `blood_bank_application` WHERE bank_id = '$id'";

$results = $con->query($sql);

if (isset($_GET['delete'])) {
  $id = $_GET['delete'];

  $sql = "DELETE FROM `blood_bank_application` WHERE `id` = '$id'";
  // $result = mysqli_query($conn, $sql);
  if ($con->query($sql) == true) {
      //   $sql = "SELECT * FROM `blood_bank` WHERE id = '$id' LIMIT 1";
      //   $result = $con->query($sql);
      //   $_SESSION['user']  = $result->fetch_assoc();
      redirect('blood_bank_deshboard.php', 'Successfullay Deleted.');
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
              <a class="nav-link" href="./blood_bank_profile.php">Profile</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="./blood_bank_deshboard.php">Deshboard</a>
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
      <h2 class="my-2">Your Recived Request:</h2>
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Applicant Name</th>
            <th scope="col">Contact Bumber</th>
            <th scope="col">B-Group</th>
            <th scope="col">Required Unit</th>
            <th scope="col">Date of Donation</th>

            <th scope="col">Hospital Name</th>
            <th scope="col">Address</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
          <?php while ($row = $results->fetch_assoc()) : ?>
            <tr>
              <th scope="row"><?php echo $row['applicant_name'] ?></th>
              <th scope="row"><?php echo $row['contact_number'] ?></th>
              <th scope="row"><?php echo $row['blood_group'] ?></th>
              <th scope="row"><?php echo $row['requird_unit'] ?></th>
              <th scope="row"><?php echo $row['date_of_donation'] ?></th>
              <th scope="row"><?php echo $row['hospital_name'] ?></th>
              <th scope="row"><?php echo $row['hospital_address'] ?></th>
              <td>

                <button class='delete btn btn-sm btn-danger' id="<?php echo $row['id'] ?>"><i class=" fa-solid fa-trash"></i></button>
              </td>

            </tr>

          <?php endwhile; ?>
        </tbody>
      </table>
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
    deletes = document.getElementsByClassName('delete');
    Array.from(deletes).forEach((element) => {
      element.addEventListener("click", (e) => {
        console.log("edit ");
        let delId = e.target.id.substr(0);


        if (confirm("Are you sure you want to delete!")) {
          console.log("yes");
          window.location = `blood_bank_deshboard.php?delete=${delId}`;

        } else {
          console.log("no");
        }
      })
    })
  </script>
</body>

</html>