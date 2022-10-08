<?php 
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';


if(isset($_POST['regForm'])){
    //pr($_POST, true);
    $fristname =  trim($_POST['fristname']);
    $lastname =  trim($_POST['lastname']);
    $blood_group =  trim($_POST['blood_group']);
    $gender = trim($_POST['gender']);
    $age =  trim($_POST['age']);
    $weight =  trim($_POST['weight']);
    $email =  trim($_POST['email']);
    $phone =  trim($_POST['phone']);
    $address =  trim($_POST['address']);
    $division =  trim($_POST['division']);
    $city =  trim($_POST['city']);
    $upazila =  trim($_POST['upazila']);
    $username = trim( $_POST['user_name']);
    $password =  md5(trim($_POST['password']));

    $sql = "INSERT INTO donors_registration(frist_name, last_name, blood_group, gender, age, weight, email, phone, address, division, city, upazila, user_name, password) VALUES('$fristname', '$lastname', '$blood_group', '$gender', '$age', '$weight', '$email', '$phone', '$address', '$division', '$city', '$upazila', '$username', '$password' )";

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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
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
            <div class="pt-2 position-fixed ">
                <div class="text-center mt-4">

                    <img class="img-fluid flat-image mb-3" src="img/registration.png" alt="">
                </div>
                <h2>Register as a Blood Donor</h2>
               
            </div>
            
            <p class="test position-fixed col-5 my-3" >Be Grateful And Donate Blood. If You Are A Blood Donor, That Is Great. But If You Are A Blood Donor Who Also Encourages Other People To Donate Blood, You Are The Best!</p>
           
        </div>
          <div class="col-lg-6 mb-5 form-content py-5">
            <form action="donor_registration.php"  method="post">
              <div class="row">
              <div class="col-6">
              <label for="fristname" class="form-lable">Frist Name</label>
              <input type="text" class="form-control" name="fristname" id="fristName" required
                placeholder="e.g. Jack" />
                </div>
                <div class="col-6">
              <label for="lastname" class="form-lable">Last Name</label>
              <input type="text" class="form-control" name="lastname" id="lastName" required
                placeholder="e.g. Sparow" />
                </div>
                </div>
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
                    <label for="gender" class="form-lable">Gender</label>
                    <select class="form-select" name="gender" id="gender">
                      <option value="male" selected>Male</option>
                      <option value="flmale">Female</option>
                      <option value="other">Other</option>
                    </select>
                    </div>
                </div>
                <div class="row">
                  <div class="col-6">
                    <label for="Age" class="form-lable">Age</label>
                    <input type="text" class="form-control" name="age" id="age" placeholder="e.g. 20" required />
                  </div>
                  <div class="col-6">
                    <label for="weight" class="form-lable">Weight</label>
                    <input type="text" class="form-control" name="weight" id="weight" placeholder="e.g. 80" required />
                  </div>
                </div>
 
              <label for="email" class="form-lable">E-mail</label>
              <input type="email" class="form-control" name="email" id="email" required
                placeholder="e.g. captain@emaxple.com" />
              <label for="phone" class="form-lable">Phone</label>
              <input type="tel" class="form-control" name="phone" id="phone" required placeholder="e.g 01555566677" />
              <label for="address" class="form-lable">Address</label>
              <input type="text" class="form-control" name="address" id="address" required
                placeholder="e.g. post office: New P.O" />
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

              <label for="user-name" class="form-lable">Set Your UserName:</label>
              <input type="text" class="form-control" name="user_name" id="user-Name" required
                placeholder="e.g. jack2022" />
              <label for="password" class="form-lable">Set Your Password</label>
              <input type="password" class="form-control" name="password" id="password" placeholder="Your password"
                required />
              <div class="text-center my-3">
                <input type="submit" value="Submit" name="regForm" class="btn btn-dark">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </main>
  <?php include_once 'partials/footer.php' ?>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
    integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
    integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
    crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
</body>

</html>