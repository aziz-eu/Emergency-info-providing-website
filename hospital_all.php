<?php
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';

$sql = "SELECT * FROM `hospital`";
$results = $con->query($sql);

if (isset($_POST['hospitalSearch'])) {

  $search = $_POST['searchValue'];

  if ($search != NULL) {

    $sql = "SELECT * FROM `hospital` WHERE `hospital_name` LIKE '%$search%' ";
    $results = $con->query($sql);
  } else {
    redirect('hospital.php', 'No results found', 'danger');
  }
  // if ($results->num_rows == 0)
  //     
}


if (isset($_GET['filterLocation'])) {
  $division = trim($_GET['division']);
  $city = trim($_GET['city']);
  $upazila = trim($_GET['upazila']);



  if ($division != NULL && $city == NULL && $upazila == NULL) {

    $sql = "SELECT * FROM `hospital` WHERE `division` = '$division' ";
    $results = $con->query($sql);
  } else if ($division != NULL && $city != NULL && $upazila == NULL) {

    $sql = "SELECT * FROM `hospital` WHERE `division` = '$division' AND `city` = '$city' ";
    $results = $con->query($sql);
  } else if ($division != NULL && $city != NULL && $upazila != NULL) {

    $sql = "SELECT * FROM `hospital` WHERE `division` = '$division' AND `city` = '$city'AND `upazila` = '$upazila' ";
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
  <link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="css/style.css" />

  <title>Info & Help</title>
</head>

<body>
  <?php include_once("./partials/navbar.php") ?>

  <main>
    <div class="container">
     <?php // include_once('./partials/msg.php') ?>
      <div class="row">
        <div class="col-lg-6 mt-4 text-start">
          <div>
            <div class="text-center col-6">
              <img class="img-fluid flat-image mb-3" src="img/hospital.png" alt="" />
            </div>
            <h3>Find Hospital and Doctor</h3>
            <p class="mt-4 mb-1">
            You can find your required hospital information, such as location, type, contact number, email address, etc. You can also learn about the hospital's doctors and filter them by the department.
            </p>
          </div>
        </div>
        <div class="col-lg-6 search-btn mt-5 p-sm-5">

          <div>
            <form method="get" action="hospital_all.php">

              <!-- <label for="division" class="form-lable">Devision</label> -->
              <!-- <label for="division" class="form-lable">Devision</label> -->

              <div class="row mb-1">
                <div class="col-6">
                  <select class="form-select" name="division" id="division">
                    <option value="" selected>
                      Select Your Division &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </option>
                  </select>
                </div>

                <div class="col-6">
                  <select class="form-select" name="city" id="city">
                    <option value="" selected>
                      Select Your District &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </option>
                  </select>
                </div>
              </div>

              <div class="row d-flex">
                <div class="col-6">
                  <select class="form-select" name="upazila" id="upazila">
                    <option value="" selected>
                      Select Your Upazila &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </option>
                  </select>


                </div>
                <div class="col-6">
                  <div class="">
                    <button type="submit" value="filter" name="filterLocation" class="btn  btn-dark filter-btn">Filter</button>
                  </div>
                </div>
              </div>


            </form>
          </div>

        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <table class="table table-striped" id="hospitlAll">
            <thead>
              <tr>
                <th scope="col">Hospital Name</th>
                <th scope="col">Type</th>
                <th scope="col">Location</th>
                <th scope="col">Phone</th>
                <th scope="col">Email</th>
                <th scope="col">Doctors</th>
              </tr>
            </thead>
            <tbody>
              <?php while ($row = $results->fetch_assoc()) : ?>
                <tr>
                  <th scope="row">
                    <?php echo $row['hospital_name'] ?>
                  </th>
                  <td><?php echo $row['type'] ?></td>
                  <td><?php echo $row['address'] ?></td>
                  <td><?php echo $row['phone'] ?></td>
                  <td><?php echo $row['email'] ?></td>

                  <td><a href="./hospital_doctor.php?h_id=<?php echo $row['id'] ?>"><i class="fa-solid fa-arrow-right  ps-3"></a></td>
                </tr>

              <?php endwhile ?>
            </tbody>
          </table>
        </div>


      </div>

    </div>
  </main>

<?php include_once("./partials/footer.php") ?>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  <script src="./js/script.js"></script>
  <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

  <script>
    $(document).ready(function() {
      $('#hospitlAll').DataTable({
          "lengthChange": false,

          "language": {
            "emptyTable": "No Result Found",
            
          },
          "ordering": false


        }


      );
    });
  </script>
</body>

</html>