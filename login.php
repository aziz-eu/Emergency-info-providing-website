<?php 
  include_once 'includes/function.php';
  include_once 'includes/session.php';
  include_once 'config/db.php';


  if(isset($_POST['btnLogin'])){
    // pr($_POST, true);
    $tables = [
        'blood_donor' => 'donors_registration',
        'ambulance_authority' => '',
        'hospital_authority' => ''
    ];

    $username = trim($_POST['username']);
    $password = md5(trim($_POST['password']));
    $role     = trim($_POST['role']);

   
    
    if( login($username, $password, $tables[$role]) )
      redirect('donorDashboard.php', 'You are logged in successfully');
    
    else{
        $_GET['msg'] = "Username or password does not match";
        $_GET['type'] = 'danger';
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
        <div id="Login-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 d-none d-lg-block">
                        <div class="pt-2 position-fixed ">
                            <div class="text-center mt-4">

                                <img class="img-fluid flat-image mb-3" src="img/padlock.png" alt="">
                            </div>
                            <h2>Login</h2>
                           
                        </div>
                        
                        <p class="test position-fixed col-5 my-3" >Don't Share Your Username or Password with anyone!</p>
                       
                    </div>
                    <div class="col-lg-6 mb-5 form-content py-5">
                        <?php include_once 'partials/msg.php' ?>
                        <form action="login.php" method="post">
                            <label for="email" class="form-lable">E-mail/username</label>
                            <input type="text" class="form-control" name="username" id="email" required
                              placeholder="e.g. captain@emaxple.com">
                            <label for="password" class="form-lable">Password</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="your password" required>
                            <label for="role" class="form-lable">Role</label>
                            <select class="form-select" name="role" id="role" required>
                              <option value="" selected>
                                Select Your Role
                              </option>
                              <option value="blood_donor">Blood Donor</option>
                              <option value="blood_donor">Blood Bank Admin</option>
                              <option value="ambulance_authority">Ambulance Authority</option>
                              <option value="hospital_authority">Hospital Authority</option>
                            </select>
                            <div class="text-center mt-5 mb-3">
                              <input type="submit" value="Login" name="btnLogin" class="btn btn-dark">
                            </div>
                            
                          </form>
                          <div class="text-center registration-option">
                          <h6>Do Not Hava a Account? Register as :</h6>
                          <p><a href="./ambulance_registration.php">Ambulance Admin</a>&emsp;|&emsp;<a href="blood_bank_registration.php">Blood Bank Admin</a>&emsp;|&emsp;<a href="donor_registration.php">Blood Donor</a>&emsp;</p>
                          <p> <a href="">Hospital Admin</a>&emsp; |&emsp;<a href="./fire_S_registration.php">Fire Service Admin</a></p>
                        </div>

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
</body>

</html>