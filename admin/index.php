<?php 
  include_once './admin_includes/admin_function.php';
  include_once './admin_includes/admin_session.php';
  include_once './admin_includes/db.php';
  if(isset($_POST['btnLogin'])){
    $username = trim($_POST['username']);
    $password = (trim($_POST['password']));

   
    
    if( login($username, $password) ){
      redirect('admin_dashboard.php', 'Your logged in');
    }
    else{
      $_GET['msg'] = "Username or password does not match";
      $_GET['type'] = 'danger';
    }
    
   

  }
  else{
   
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
  <link rel="stylesheet" href="../css/style.css" />

  <title>Info & Help</title>
</head>
<body>

    <header class="sticky-top">
        <nav class="navbar navbar-expand-lg  bg-white">
          <div class="container">
            <a class="navbar-brand" href="../index.php">Emergency Info <span>&</span> Help</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
              <ul class="navbar-nav ms-auto">

              </ul>
            
            </div>
          </div>
        </nav>
      </header>
    
<main>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="pt-2 position-fixed ">
                    <div class="text-center mt-4">

                        <img class="img-fluid flat-image mb-3" src="../img/padlock.png" alt="">
                    </div>
                    <h2>Login</h2>
                   
                </div>
                
                <p class="test position-fixed col-5 my-3" >Don't Share Your Username or Password with anyone!</p>
               
            </div>
            <div class="col-lg-6 mb-5 form-content py-5">
                <?php include_once '../partials/msg.php' ?>
                <form action="index.php" method="post">
                    <label for="email" class="form-lable">Username</label>
                    <input type="text" class="form-control" name="username" id="email" required
                      placeholder="e.g. captain@emaxple.com">
                    <label for="password" class="form-lable">Password</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="your password" required>
                    <div class="text-center mt-5 mb-3">
                      <input type="submit" value="Login" name="btnLogin" class="btn btn-dark">
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
        <a
          class="btn btn-outline-light btn-floating m-1"
          href="#!"
          role="button"
          ><i class="fab fa-facebook-f"></i
        ></a>

        <!-- Twitter -->
        <a
          class="btn btn-outline-light btn-floating m-1"
          href="#!"
          role="button"
          ><i class="fab fa-twitter"></i
        ></a>

        <!-- Google -->
        <a
          class="btn btn-outline-light btn-floating m-1"
          href="#!"
          role="button"
          ><i class="fab fa-google"></i
        ></a>

        <!-- Instagram -->
        <a
          class="btn btn-outline-light btn-floating m-1"
          href="#!"
          role="button"
          ><i class="fab fa-instagram"></i
        ></a>

        <!-- Linkedin -->
        <a
          class="btn btn-outline-light btn-floating m-1"
          href="#!"
          role="button"
          ><i class="fab fa-linkedin-in"></i
        ></a>

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