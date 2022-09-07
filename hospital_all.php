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
    <header class="sticky-top">
      <nav class="navbar navbar-expand-lg bg-white">
        <div class="container">
          <a class="navbar-brand" href="index.php"
            >Emergency Info <span>&</span> Help</a
          >
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="index.php"
                  >Home</a
                >
              </li>
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="navbarDropdownMenuLink"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                >
                  Blood
                </a>
                <ul
                  class="dropdown-menu"
                  aria-labelledby="navbarDropdownMenuLink"
                >
                  <li>
                    <a class="dropdown-item" href="request_blood.php"
                      >Blood Request</a
                    >
                  </li>
                  <li>
                    <a class="dropdown-item" href="donor_registration.php"
                      >Donor Registration</a
                    >
                  </li>
                  <li>
                    <a class="dropdown-item" href="blood_bank.php"
                      >Blood Bank</a
                    >
                  </li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="ambulance.php">Ambulance</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="hospital.php">Hospital</a>
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
                <a class="nav-link" href="contact.php">Contact</a>
              </li>
            </ul>
            <a href="login.php" class="btn btn-brand ms-lg-3">Login</a>
          </div>
        </div>
      </nav>
    </header>

    <main>
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mt-4 text-start">
            <div>
              <div class="text-center col-6">
                <img
                  class="img-fluid flat-image mb-3"
                  src="img/hospital.png"
                  alt=""
                />
              </div>
              <h3>Find Hospital and Doctor</h3>
              <p class="mt-4 mb-5">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo
                sequi minima mollitia sapiente earum nulla cum adipisci ab quo.
                Dolore molestiae id fuga temporibus maiores mollitia quae sequi
                libero est?
              </p>
            </div>
          </div>
          <div class="col-6 search-btn mt-5">
            <!-- <div class="input-group rounded">
              <input
                type="search"
                class="form-control rounded"
                placeholder="Search Hospital"
                aria-label="Search"
                aria-describedby="search-addon"
              />
              <button>
                <span class="input-group-text border-0" id="search-addon">
                  <i class="fas fa-search"></i>
                </span>
              </button>
            </div> -->

           <div >
           <form method="POST" action="">
             
             <!-- <label for="division" class="form-lable">Devision</label> -->
             <select class="form-select" name="division" id="division">
               <option value="select-message" selected>
                 Plese Select Your Devision
               </option>
             </select>
               
                 <!-- <label for="city" class="form-lable">City</label> -->
                 <select class="form-select my-1" name="city" id="city">
                   <option value="select-message" selected>
                     Plese Select Your City
                   </option>
                 </select>
                 <!-- <label for="upazila" class="form-lable">Upazila</label> -->
                 <select class="form-select" name="upazila" id="upazila">
                   <option value="select-message" selected>
                     Plese Select Your Upazila
                   </option>
                 </select>       
             <div class="text-center mt-3 mb-5">
               <button type="submit" name="fireServiceSerch" class="btn btn-dark">Filter</button>
             </div>
           </form>
           </div>
          
          </div>
        </div>
        <div class="row">
          <div class="col-lg-10">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th scope="col">Hospital Name</th>
                  <th scope="col">Type</th>
                  <th scope="col">Location</th>
                  <th scope="col">Doctor List</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">
                    Bangabandhu Sheikh Mujib Medical University Hospital
                  </th>
                  <td>General Medicin & Sergary</td>
                  <td>Shahbag, Dhaka-1000</td>
                  <td><a href="./hospital_doctor.php">list</a></td>
                </tr>
                <tr>
                  <th scope="row">Dhaka Medical Collage Hospital</th>
                  <td>General Medicin & Sergary</td>
                  <td>Secretariat Road, Dhaka-1000</td>
                  <td><a href="">Doctor List</a></td>
                </tr>
                <tr>
                  <th scope="row">Kurmitola General Hospital</th>
                  <td>General Medicin & Sergary</td>
                  <td>Kurmitola, Dhaka-1206</td>
                  <td><a href="">Doctor List</a></td>
                </tr>
                <tr>
                  <th scope="row">
                    National Institute Of Neurosciences & Hospital
                  </th>
                  <td>Specialized hospital</td>
                  <td>Sher-e-Bangla Nagar, Dhaka</td>
                  <td><a href="">Doctor List</a></td>
                </tr>
                <tr>
                  <th scope="row">
                    Shaheed Suhrawardy Medical College and Hospital
                  </th>
                  <td>General Medicin & Sergary</td>
                  <td>Sher-e-Bangla Nagar, Dhaka</td>
                  <td><a href="">Doctor List</a></td>
                </tr>
                <tr>
                  <th scope="row">Chattogram Medical College Hospital</th>
                  <td>General Medicin & Sergary</td>
                  <td>Fazlul Kader Rd, Chattogram</td>
                  <td><a href="">Doctor List</a></td>
                </tr>
                <tr>
                  <th scope="row">Sher-e-bangla medical College hospital</th>
                  <td>General Medicin & Sergary</td>
                  <td>Bando Road, Barishal</td>
                  <td><a href="">Doctor List</a></td>
                </tr>
                <tr>
                  <th scope="row">
                    National Institute of Ear, Nose And Throat
                  </th>
                  <td>Specialized Hospital</td>
                  <td>Love Road, Tejgaon, Dhaka</td>
                  <td><a href="">Doctor List</a></td>
                </tr>
                <tr>
                  <th scope="row">Bangladesh Shishu Hospital and Institute</th>
                  <td>Child Hospital</td>
                  <td>Sher-e-Bangla Nagar, Dhaka</td>
                  <td><a href="">Doctor List</a></td>
                </tr>
                <tr>
                  <th scope="row">National Kidney Institute and Hospital</th>
                  <td>Specialized Hospital</td>
                  <td>Sher-e Bangla Nagar</td>
                  <td><a href="">Doctor List</a></td>
                </tr>
              </tbody>
            </table>
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
          <a
            class="btn btn-outline-light btn-floating m-1"
            href="#!"
            role="button"
            ><i class="fab fa-github"></i
          ></a>
        </section>
      </div>

      <div class="text-center p-3 footer-last">
        © 2022 Copyright
        <a class="text-white" href="/"></a>
      </div>

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
    <script src="./js/script.js"></script>
  </body>
</html>
