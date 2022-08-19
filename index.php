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
    <!-- Navbar -->
    <?php include_once 'partials/navbar.php' ?>

    <main>
      <!-- WellcomeText & Image -->
      <div class="container main-section">
        <div class="row">
          <div class="col-lg-7 mt-5 welcome-message">
            <h2>Welcome to Emergency Info & Help</h2>
            <p>
              Lorem ipsum dolor, sit amet consectetur adipisicing elit. Neque
              sunt architecto dolore! Rem id neque ea rerum ratione. Omnis,
              accusantium atque minima accusamus veritatis sunt autem quisquam
              a, maiores voluptate eum! Voluptas!
            </p>
          </div>
          <div class="col-lg-5 welcome-img d-none d-lg-block">
            <img class="img-fluid" src="img/welcome.png" alt="" />
          </div>
        </div>
      </div>

      <!-- Cards Heading -->

      <div class="container">
        <div class="row">
          <div class="col-12 text-center my-lg-5">
            <h4>Find Help</h4>
            <p>We try to Connect People</p>
          </div>
        </div>
        <div class="row my-3 py-2">
          <div class="col-lg-4 d-block d-lg-flex">
            <a href="./request_blood.php" class="d-block d-lg-flex">
              <div class="box box1 text-center pt-4">
                <img
                  class="img-fluid flat-image"
                  src="img/add-friend.png"
                  alt="blood_donor"
                />

                <h3 class="py-3">Search Blood Donors</h3>
                <p class="pt-2 pb-4">
                  Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                  Aperiam fugiat delectus autem.
                </p>
              </div>
            </a>
          </div>
          <div class="col-lg-4 d-block d-lg-flex">
            <a href="./blood_bank.php" class="d-block d-lg-flex">
              <div class="box box1 text-center pt-4">
                <img
                  class="img-fluid flat-image"
                  src="img/blood-bank(1).png"
                  alt="ambulance"
                />

                <h3 class="py-3">Find Blood Bank</h3>
                <p class="pt-2 pb-4">
                  Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                  Aperiam fugiat delectus autem.
                </p>
              </div>
            </a>
          </div>
          <div class="col-lg-4 d-block d-lg-flex">
            <a href="./ambulance.php" class="d-block d-lg-flex">
              <div class="box box1 text-center pt-4">
                <img
                  class="img-fluid flat-image"
                  src="img/ambulance1.png"
                  alt="ambulance"
                />

                <h3 class="py-3">Find Ambulance</h3>
                <p class="pt-2 pb-4">
                  Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                  Aperiam fugiat delectus autem.
                </p>
              </div>
            </a>
          </div>
        </div>
        <div class="row my-3 py-2">
          <div class="col-lg-4 d-block d-lg-flex">
            <a href="./hospital.php" class="d-block d-lg-flex">
              <div class="box box1 text-center pt-4">
                <img
                  class="img-fluid flat-image"
                  src="img/hospital.png"
                  alt="blood_donor"
                />

                <h3 class="py-3">Search Hospital & Doctor</h3>
                <p class="pt-2 pb-4">
                  Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                  Aperiam fugiat delectus autem.
                </p>
              </div>
            </a>
          </div>
          <div class="col-lg-4 d-block d-lg-flex">
            <a href="./fire.php" class="d-block d-lg-flex">
              <div class="box box1 text-center pt-4">
                <img
                  class="img-fluid flat-image"
                  src="img/siren.png"
                  alt="ambulance"
                />

                <h3 class="py-3">Fire Service Help</h3>
                <p class="pt-2 pb-4">
                  Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                  Aperiam fugiat delectus autem.
                </p>
              </div>
            </a>
          </div>
          <div class="col-lg-4 d-block d-lg-flex">
            <a href="./police.php" class="d-block d-lg-flex">
              <div class="box box1 text-center pt-4">
                <img
                  class="img-fluid flat-image"
                  src="img/police-badge.png"
                  alt="ambulance"
                />

                <h3 class="py-3">Police Help</h3>
                <p class="pt-2 pb-4">
                  Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                  Aperiam fugiat delectus autem.
                </p>
              </div>
            </a>
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
  </body>
</html>
