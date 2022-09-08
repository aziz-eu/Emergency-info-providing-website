<?php 
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';


if(isset($_POST['reqForm'])){
    //pr($_POST, true);
    $patient_name =  trim($_POST['patient_name']);
    $blood_group =  trim($_POST['blood_group']);
    $required_unit =  trim($_POST['required_unit']);
    $gender = trim($_POST['gender']);
    $age =  trim($_POST['age']);
    $date_of_donation =  trim($_POST['date_of_donation']);
    $hospital_name =  trim($_POST['hospital_name']);
    $hospital_address =  trim($_POST['hospital_address']);
    $division =  trim($_POST['division']);
    $city =  trim($_POST['city']);
    $upazila =  trim($_POST['upazila']);
    $contact_person = trim( $_POST['contact_person']);
    $contact_number =  trim($_POST['contact_number']);
    $patient_history =  trim($_POST['patient_history']);

    $sql = "INSERT INTO blood_request(patient_name, blood_group, required_unit, gender, age, date_of_donation, hospital_name, hospital_address, division, city, upazila, contact_person, contact_number, patient_history) VALUES('$patient_name', '$blood_group', '$required_unit', '$gender', '$age', '$date_of_donation', '$hospital_name', '$hospital_address',  '$division', '$city', '$upazila', '$contact_person', '$contact_number', '$patient_history' )";

    if($con->query($sql) == true  ){
      redirect('request_blood.php', 'Your Request is Successfully Submited');
    }
    else{
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
    <?php include_once 'partials/navbar.php' ?>

    <main>
      <div id="blood-request">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 d-none d-lg-block">
              <div class="pt-2 position-fixed">
                <div class="text-center mt-4">
                  <img
                    class="img-fluid flat-image mb-3"
                    src="img/add-friend.png"
                    alt=""
                  />
                </div>
                <h2>Send a Request to Blood Donor's</h2>
              </div>

              <p class="test position-fixed col-5 my-3">
                Lorem, ipsum. Lorem ipsum dolor, sit amet consectetur
                adipisicing elit. Dolores error hic blanditiis, molestias
                assumenda adipisci quae sed accusantium inventore velit? quasi
                officiis reiciendis natus, consectetur unde?
              </p>
            </div>
            <div class="col-lg-6 mb-5 form-content py-5">
              <?php include_once('./partials/msg.php') ?>
              <form method="post" action="request_blood.php">
                <label for="patient-name" class="form-lable"
                  >Patient Name</label
                >
                <input
                  type="text"
                  class="form-control"
                  name="patient_name"
                  id="fristName"
                  required
                  placeholder="e.g. Maria"
                />
                <div class="row">
                  <div class="col-6">
                    <label for="blood-group" class="form-lable"
                      >Blood Group</label
                    >
                    <select
                      class="form-select"
                      name="blood_group"
                      id="blood-group"
                    >
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
                    <label for="required-unit" class="form-lable"
                      >Required Unit</label
                    >
                    <input
                      type="text"
                      class="form-control"
                      name="required_unit"
                      id="required-unit"
                      required
                      placeholder="e.g. 3"
                    />
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
                    <input
                      type="text"
                      class="form-control"
                      name="age"
                      id="age"
                      placeholder="e.g. 20"
                      required
                    />
                  </div>
                </div>

                <label for="date" class="form-lable"
                  >Date of Blood Donation</label
                >
                <input
                  type="text"
                  class="form-control"
                  name="date_of_donation"
                  id="date"
                  placeholder="DD/MM/YYYY"
                  required
                />
                <label for="hospital-name" class="form-lable"
                  >Hospital Name</label
                >
                <input
                  type="text"
                  class="form-control"
                  name="hospital_name"
                  id="hospital-name"
                  placeholder="e.g. Labaid Hospital "
                  required
                />
                <label for="address" class="form-lable">Hospital Address</label>
                <input
                  type="text"
                  class="form-control"
                  name="hospital_address"
                  id="address"
                  required
                  placeholder="e.g. Dhanmondi, Road-04 "
                />
                <label for="division" class="form-lable">Division</label>
                <select class="form-select" name="division" id="division">
                  <option value="select-message" selected>
                    Plese Select Your Division
                  </option>
                </select>
                <div class="row">
                  <div class="col-6">
                    <label for="city" class="form-lable">City</label>
                    <select class="form-select" name="city" id="city">
                      <option value="select-message" selected>
                        Plese Select Your City
                      </option>
                    </select>
                  </div>
                  <div class="col-6">
                    <label for="upazila" class="form-lable">Upazila</label>
                    <select class="form-select" name="upazila" id="upazila">
                      <option value="select-message" selected>
                        Plese Select Your Upazila
                      </option>
                    </select>
                  </div>
                </div>
                <label for="contact-person-name" class="form-lable"
                  >Contact Person Name:</label
                >
                <input
                  type="text"
                  class="form-control"
                  name="contact_person"
                  id="contact-person-name"
                  required
                  placeholder="e.g.Elizabeth Swann"
                />
                <label for="phone" class="form-lable"
                  >Contact Person Phone:</label
                >
                <input
                  type="tel"
                  class="form-control"
                  name="contact_number"
                  id="phone"
                  required
                  placeholder="e.g 01555566677"
                />
                <label for="patient-info" class="form-lable"
                  >Patient History</label
                >
                <textarea
                  name="patient_history"
                  class="form-control"
                  id="patient-info"
                  cols="30"
                  rows="5"
                  placeholder="why need blood?"
                ></textarea>
                <div class="text-center my-3">
                  <input type="submit" value="Submit" name="reqForm" class="btn btn-dark">
                </div>
              </form>
            </div>
          </div>
        </div>
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
    <script src="js/script.js"></script>
  </body>
</html>
