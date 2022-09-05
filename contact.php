<?php 
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';


if(isset($_POST['contactForm'])){
    //pr($_POST, true);
    $name =  trim($_POST['name']);
    $email =  trim($_POST['email']);
    $phone =  trim($_POST['phone']);
    $message =  trim($_POST['message']);

    $sql = "INSERT INTO `contact`(`name`, `email`, `phone`, `message`) VALUES ('$name','$email','$phone','$message')";

    if($con->query($sql) == true  ){
      redirect('contact.php', 'Thank You. We will replay you as soon as possiable');
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
    <header class="sticky-top">
        <nav class="navbar navbar-expand-lg  bg-white">
            <div class="container">
                <a class="navbar-brand" href="index.php">Emergency Info <span>&</span> Help</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="index.php">Home</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Blood
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li>
                                    <a class="dropdown-item" href="request_blood.php">Blood Request</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="donor_registration.php">Donor Registration</a>
                                </li>
                                <li><a class="dropdown-item" href="blood_bank.php">Blood Bank</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ambulance.php">Ambulance</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="hospital.php">Hospital</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="police.php">Police</a>
                          </li>
                        <li class="nav-item">
                            <a class="nav-link" href="fire.php">Fire Service</a>
                          </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.php">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="contact.php">Contact</a>
                        </li>
                    </ul>
                    <a href="login.php" class="btn btn-brand ms-lg-3">Login</a>
                </div>
            </div>
        </nav>
    </header>

    <main>
        <div id="blood-request">
            <div class="container">
            <?php include_once 'partials/msg.php' ?>
                <div class="row">
                    <div class="col-lg-6 d-none d-lg-block">
                        <div class="pt-2 position-fixed ">
                            <div class="text-center mt-4">

                                <img class="img-fluid flat-image mb-3" src="img/call-center-worker-with-headset.png" alt="">
                            </div>
                            <h2>Contact Us</h2>
                           
                        </div>
                        
                        <p class="test position-fixed col-5 my-3" >Whether you have a question, Suggestion, complain or just want to say hello, we’re happy to hear from you.</p>
                       
                    </div>
                    <div class="col-lg-6 mb-5 form-content py-5">

                        <form method="POST" action="./contact.php">
                            <label for="name" class="form-lable">Your Name:</label>
                            <input type="text" class="form-control" name="name" id="name" required
                                placeholder="e.g. Jack">
                            <label for="email" class="form-lable">E-mail:</label>
                            <input type="email" class="form-control" name="email" id="email" required
                                placeholder="e.g. captain@emaxple.com">
                            <label for="phone" class="form-lable">Phone:</label>
                            <input type="tel" class="form-control" name="phone" id="phone" required
                                placeholder="e.g 01555566677">
                            <label for="message" class="form-lable">Your Message</label>
                            <textarea name="message" class="form-control" id="" cols="30" rows="8"
                                placeholder=""></textarea>
                            <div class="text-center my-3">
                                <div class="text-center my-3">

                                    <button type="submit" name="contactForm" class="btn btn-dark">Send</button>
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
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i
                        class="fab fa-facebook-f"></i></a>

                <!-- Twitter -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i
                        class="fab fa-twitter"></i></a>

                <!-- Google -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i
                        class="fab fa-google"></i></a>

                <!-- Instagram -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i
                        class="fab fa-instagram"></i></a>

                <!-- Linkedin -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i
                        class="fab fa-linkedin-in"></i></a>

                <!-- Github -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i
                        class="fab fa-github"></i></a>
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

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
</body>

</html>