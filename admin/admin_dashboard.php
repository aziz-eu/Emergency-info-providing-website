<?php
include_once './admin_includes/admin_function.php';
include_once './admin_includes/admin_session.php';
include_once './admin_includes/db.php';
guard('index.php', 'You must login first');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../css/style.css" />

    <title>Info & Help</title>
</head>

<body>

    <header class="sticky-top">
        <nav class="navbar navbar-expand-lg  bg-white">
            <div class="container">
                <a class="navbar-brand" href="./admin_dashboard.php">Emergency Info <span>&</span> Help</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="./admin_dashboard.php">Dashboard</a>
                        </li>
                        

                    </ul>
                    <a href="messages.php" class="btn btn-brand ms-lg-3">Messages</a>

                </div>
            </div>
        </nav>
    </header>

    <main>
        <div class="container">
            <div class="row admin-dashboard">

                <div class="col-5">

                    <div class="adimin-services">

                        <div class="accordion accordion-flush" id="all_services">


                            <div class="accordion-item">
                                <h2 class="accordion-header" id="blood_heading">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#blood_department" aria-expanded="false" aria-controls="blood_department">
                                        Blood Section
                                    </button>
                                </h2>
                                <div id="blood_department" class="accordion-collapse collapse" aria-labelledby="blood_heading" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                      
                                        <a href="blood_donors_info.php">Blood Donors info</a>
                                        <br>
                                        <a href="blood_bank_info.php">Blood Bank info</a>
                                        <br>
                                        <a href="blood_request_info.php">Blood Request info</a>
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <h2 class="accordion-header" id="ambulance">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#ambulance_department" aria-expanded="false" aria-controls="ambulance_department">
                                        Ambulance Section
                                    </button>
                                </h2>
                                <div id="ambulance_department" class="accordion-collapse collapse" aria-labelledby="ambulance" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <p><a href="ambulance_provider.php">Ambulance Provider info</a></p>
                                        <!-- <p><a href="ambulance_searcher.php">Ambulance Searcher info</a></p> -->
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <h2 class="accordion-header" id="hospital_heading">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#hospital_department" aria-expanded="false" aria-controls="hospital_department">
                                        Hospital Section
                                    </button>
                                </h2>
                                <div id="hospital_department" class="accordion-collapse collapse" aria-labelledby="hospital_heading" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <a href="hospital_info.php">Hospital Info</a>
                                    </div>
                                </div>
                            </div>


                            <!-- done -->

                            <div class="accordion-item">
                                <h2 class="accordion-header" id="police">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#police_department" aria-expanded="false" aria-controls="police_department">
                                        Police Section
                                    </button>
                                </h2>
                                <div id="police_department" class="accordion-collapse collapse" aria-labelledby="police" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <p><a href="police_info.php">Show Police Information</a></p>
                                        <p><a href="police_add_new.php">Add New Police Station</a></p>
                                    </div>
                                </div>
                            </div>

                            <!-- done -->
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="fire_service_heading">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#fire_service_department" aria-expanded="false" aria-controls="fire_service_department">
                                        Fire Service Section
                                    </button>
                                </h2>
                                <div id="fire_service_department" class="accordion-collapse collapse" aria-labelledby="fire_service_heading" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        
                                    <a href="./fire_service_info.php">Fire Service </a>
                                    <br>
                                    <a href="./fire_service_addnew.php">Add New Fire Service Station </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-7 admin_panal">

                <div class="">
                    <h2 class="text-center">Wellcome Admin</h2>
                    <p>Remember, if you ever need a helping hand, you'll find one at the end of your arm... As you grow older you will discover that you have two hands. One for helping yourself, the other for helping others.... Audrey Hepburn</p>
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
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-github"></i></a>
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
</body>

</html>