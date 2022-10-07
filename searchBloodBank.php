<?php
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';
// guard('login.php', 'You must login first');

if (isset($_POST['blooadBnkSearch'])) {
  $division = trim($_POST['division']);
  $city = trim($_POST['city']);
  $upazila = trim($_POST['upazila']);

  $sql = "SELECT * FROM `blood_bank` WHERE division = '$division' AND  city = '$city' AND upazila = '$upazila'";
  $results = $con->query($sql);

  if ($results->num_rows == 0)
    redirect('blood_bank.php', 'No results found', 'danger');
}

if (isset($_POST['applicationForm'])) {
  //pr($_POST, true);
  $applicant_name =  trim($_POST['applicant_name']);
  $contact_number =  trim($_POST['contact_number']);
  $blood_group =  trim($_POST['blood_group']);
  $required_unit =  trim($_POST['required_unit']);
  $date_of_donation =  trim($_POST['date_of_donation']);
  $hospital_name =  trim($_POST['hospital_name']);
  $hospital_address =  trim($_POST['hospital_address']);
  $bank_id =  trim($_POST['bank_id']);


  $sql = "INSERT INTO `blood_bank_application` (`applicant_name`, `contact_number`, `blood_group`, `requird_unit`, `date_of_donation`, `hospital_name`, `hospital_address`, `bank_id`) VALUES('$applicant_name','$contact_number' ,'$blood_group', '$required_unit', '$date_of_donation', '$hospital_name', '$hospital_address',  '$bank_id' )";




  if ($con->query($sql) == true) {
    redirect('blood_bank.php', 'Your Application successfully submitted');
  } else {
    echo "Error: " . $sql . "<br>" . $con->error;
  }
} else {
  // redirect('blood_bank.php');
}



?>



<!-- -------------------------------------- -->


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

          <div class="col-lg-6 d-block d-lg-flex">
            <div class="blook-bank-card propertiys">
              <h2><?php echo $row['bank_name'] ?></h2>
              <ul>
                <li>Phone : <?php echo $row['phone'] ?></li>
                <li>Email: <?php echo $row['email'] ?></li>
                <li>Address : <?php echo $row['address'] ?> <?php echo $row['upazila'] ?> , <?php echo $row['city'] ?></li>
                <li>Status : <?php echo $row['status'] ?></li>
                <li>
                  Avaiable Blood Group :&emsp;
                  A+: <?php echo $row['aviable_a_positive'] ?>
                  &emsp;&emsp;
                  A-: <?php echo $row['aviable_a_negative'] ?>
                  &emsp;&emsp;
                  B+: <?php echo $row['aviable_b_positive'] ?>
                  &emsp;&emsp;
                  B+: <?php echo $row['aviable_b_negative'] ?>
                  <div class="padding-blood-search">
                    O+: <?php echo $row['aviable_o_positive'] ?>
                    &emsp;&emsp;
                    O-: <?php echo $row['aviable_o_negative'] ?>
                    &emsp;&emsp;
                    AB+: <?php echo $row['aviable_ab_positive'] ?>
                    &emsp;&emsp;
                    AB-: <?php echo $row['aviable_ab_negative'] ?>
                    &emsp;&emsp;&emsp;&emsp;</div>
                </li>

              </ul>
              <div class="text-center my-3">

                <!-- Button trigger modal -->
                <button type="submit" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#blood_application_id_<?php echo $row['id'] ?>">
                  Application For Blood
                </button>



              </div>
            </div>
          </div>
          <!-- Modal -->
          <div class="modal fade" id="blood_application_id_<?php echo $row['id'] ?>" tabindex="-1" aria-labelledby="bloodApplicationLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="bloodApplicationLabel">Blood Application</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">




                  <!-- <--Form in Modal-->


                  <form method="POST" action="./searchBloodBank.php">
                    <label for="applicant-name" class="form-lable">Applicant Name</label>
                    <input type="text" class="form-control" name="applicant_name" id="applicant" required placeholder="e.g. Maria" />
                    <label for="phone" class="form-lable">Contact Person Phone:</label>
                    <input type="tel" class="form-control" name="contact_number" id="phone" required placeholder="e.g 01555566677" />
                    <div class="row">
                      <div class="col-6">
                        <label for="blood-group" class="form-lable">Blood Group</label>
                        <select class="form-select" name="blood_group" id="blood-group">
                          <option value="A+" selected>A+</option>
                          <option value="A-">A-</option>
                          <option value="B+">B+</option>
                          <option value="B-">B-</option>
                          <option value="AB+">AB+</option>
                          <option value="AB-">AB-</option>
                          <option value="O+">O+</option>
                          <option value="O-">O-</option>
                        </select>
                      </div>
                      <div class="col-6">
                        <label for="required-unit" class="form-lable">Required Unit</label>
                        <input type="text" class="form-control" name="required_unit" id="required-unit" required placeholder="e.g. 3" />
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-6">
                        <label for="gender" class="form-lable">Gender</label>
                        <select class="form-select" name="gender" id="gender">
                          <option value="male" selected>Male</option>
                          <option value="flmale">Female</option>
                          <option value="other">Other</option>
                        </select>
                      </div>
                      <div class="col-6">
                        <label for="Age" class="form-lable">Age</label>
                        <input type="text" class="form-control" name="age" id="age" placeholder="e.g. 20" required />
                      </div>
                    </div>

                    <label for="date" class="form-lable">Date of Blood Donation</label>
                    <input type="text" class="form-control" name="date_of_donation" id="date" placeholder="DD/MM/YYYY" required />
                    <label for="hospital-name" class="form-lable">Hospital Name</label>
                    <input type="text" class="form-control" name="hospital_name" id="hospital-name" placeholder="e.g. Labaid Hospital " required />
                    <label for="address" class="form-lable">Hospital Address</label>
                    <input type="text" class="form-control" name="hospital_address" id="address" required placeholder="e.g. Dhanmondi, Road-04 " />

                    <input type="hidden" name="bank_id" value="<?php echo $row['id'] ?>">
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                      <button type="submit" name="applicationForm" class="btn btn-dark">Submit</button>
                    </div>
                  </form>



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