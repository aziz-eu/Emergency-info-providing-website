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
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
          aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
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
              <a class="nav-link active" href="about.php">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.php">Contact</a>
            </li>
          </ul>
          <a href="login.php" class="btn btn-brand ms-lg-3">Login</a>
        </div>
      </div>
    </nav>
  </header>
  <main>
  <div id="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="mt-4">
            <div class="mt-2">

              <img class="img-fluid flat-image mb-3 mx-4" src="img/info.png" alt="">
          </div>
            <h2>About Us</h2>
            <p class="pt-3">
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facilis
              earum expedita nam molestiae, magnam dolorem aut ut illo similique
              error deserunt maxime enim blanditiis aliquid, praesentium non
              odit harum corrupti hic voluptatem aperiam officiis? Et rerum
              similique quas itaque, reprehenderit est magni molestias obcaecati
              ad quibusdam cupiditate nisi rem corrupti quisquam dicta veniam ut
              repellat officia, adipisci assumenda ex voluptates? Consequuntur
              aliquam repellendus nam fuga exercitationem debitis reiciendis
              quibusdam fugiat dolorem possimus, labore omnis atque? Magnam
              similique necessitatibus dolore rem doloremque, esse incidunt,
              accusamus ipsam officia praesentium earum dolores! Neque
              reprehenderit magnam dolorum dolores explicabo illo enim?
              Delectus, vitae in.
            </p>
          </div>
        </div>
        <div class="col-lg-6 mt-lg-5 form-content py-lg-5 ps-5">
          <h4 class="mt-4 pt-5">Misson</h4>
          <p class="">
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Et iusto
            similique eligendi possimus nostrum debitis veniam soluta.
            Blanditiis voluptate esse mollitia nostrum sequi non et deleniti,
            excepturi ducimus labore modi.
          </p>
          <h4 class="mt-5">Objective</h4>
          <ul>
            <li>
              Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quidem,
              itaque!
            </li>
            <li>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis,
              quisquam?
            </li>
          </ul>
        </div>
      </div>
      <div class="developer my-5">
        <h3>Developer Team</h3>
        <div class="row mt-5">
          <div class="col-lg-4 d-block d-lg-flex justify-content-center">
            <div class="box p-2">
              <img src="img/man.jpg" alt="" class="img-fluid" />
              <h3
                class="text-center font-weight-bolder rounded mx-auto d-block py-2"
              >
                Abdul Aziz
              </h3>
              <div>
                <p class="text-center">
                  BSC in CSE <br />
                  Eastern University
                </p>
              </div>
              <div class="text-center">
                <i class="fa-brands fa-github fa-2x"></i>
                <i class="fa-brands fa-linkedin fa-2x px-5 py-4"></i>
                <i class="fa-brands fa-telegram fa-2x"></i>
              </div>
            </div>
          </div>
          <div class="col-lg-4 d-block d-lg-flex justify-content-center">
            <div class="box p-2">
              <img src="img/man.jpg" alt="" class="img-fluid" />
              <h3
                class="text-center font-weight-bolder rounded mx-auto d-block py-2"
              >
                Abdul Aziz
              </h3>
              <div>
                <p class="text-center">
                  BSC in CSE <br />
                  Eastern University
                </p>
              </div>
              <div class="text-center">
                <i class="fa-brands fa-github fa-2x"></i>
                <i class="fa-brands fa-linkedin fa-2x px-5 py-4"></i>
                <i class="fa-brands fa-telegram fa-2x"></i>
              </div>
            </div>
          </div>
          <div class="col-lg-4 d-block d-lg-flex justify-content-center">
            <div class="box p-2">
              <img src="img/man.jpg" alt="man-img" class="img-fluid" />
              <h3
                class="text-center font-weight-bolder rounded mx-auto d-block py-2"
              >
                Abdul Aziz
              </h3>
              <div>
                <p class="text-center">
                  BSC in CSE <br />
                  Eastern University
                </p>
              </div>
              <div class="text-center">
                <i class="fa-brands fa-github fa-2x"></i>
                <i class="fa-brands fa-linkedin fa-2x px-5 py-4"></i>
                <i class="fa-brands fa-telegram fa-2x"></i>
              </div>
            </div>
          </div>
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

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
    integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
    integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
    crossorigin="anonymous"></script>
</body>

</html>