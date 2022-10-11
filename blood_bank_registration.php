<?php 
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';


if(isset($_POST['bloodRegForm'])){
    //pr($_POST, true);
    $bank_name =  trim($_POST['bank_name']);
    $email =  trim($_POST['email']);
    $phone =  trim($_POST['phone']);
    $address =  trim($_POST['address']);
    $division =  trim($_POST['division']);
    $city =  trim($_POST['city']);
    $upazila =  trim($_POST['upazila']);
    $username = trim( $_POST['username']);
    $password =  md5(trim($_POST['password']));

    $sql = "INSERT INTO blood_bank(bank_name, email, phone, address, division, city, upazila, user_name, password) VALUES('$bank_name', '$email', '$phone', '$address', '$division', '$city', '$upazila', '$username', '$password' )";

    if($con->query($sql) == true  ){
      redirect('login.php', 'Registraion successfully');
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
                    src="img/registration.png"
                    alt=""
                  />
                </div>
                <h2>Blood Bank Registration</h2>
              </div>

              <p class="test position-fixed col-5 my-3">
              Fill the form carefully to add your blood bank to our system. You can login and manage your blood stock. People can find out about your blood bank and blood stock details. After submitting the form, we will verify your provided information.
              </p>
            </div>
            <div class="col-lg-6 mb-5 form-content py-5">
              <form method="post" action="blood_bank_registration.php">
                <label for="blood-bank-name" class="form-lable">
                  Blood Bank Name</label>
                <input
                  type="text"
                  class="form-control"
                  name="bank_name"
                  id="blood-bank-name"
                  required
                  placeholder="e.g. BD Blood Bank"
                />

                <label for="email" class="form-lable">E-mail</label>
                <input
                  type="email"
                  class="form-control"
                  name="email"
                  id="email"
                  required
                  placeholder="e.g. captain@emaxple.com"
                />
                <label for="phone" class="form-lable">Phone</label>
                <input
                  type="text"
                  class="form-control"
                  name="phone"
                  id="phone"
                  required
                  placeholder="e.g 01555566677"
                />
                <label for="address" class="form-lable">Address</label>
                <input
                  type="text"
                  class="form-control"
                  name="address"
                  id="address"
                  required
                  placeholder="e.g. post office: New P.O"
                />
                <label for="division" class="form-lable">Devision</label>
                <select class="form-select" name="division" id="division">
                  <option value="select-message" selected>
                    Plese Select Your Devision
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

                <label for="user-name" class="form-lable"
                  >Set Admin UserName:</label
                >
                <input
                  type="text"
                  class="form-control"
                  name="username"
                  id="user-Name"
                  required
                  placeholder="e.g. jack2022"
                />
                <label for="password" class="form-lable"
                  >Set Your Password</label
                >
                <input
                  type="password"
                  class="form-control"
                  name="password"
                  id="password"
                  placeholder="Your password"
                  required
                />
                <div class="text-center my-3">
                  <input type="submit" value="Submit" name="bloodRegForm" class="btn btn-dark">
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
