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
                    src="img/blood-bank(1).png"
                    alt=""
                  />
                </div>
                <h2>Search for a Blood Bank</h2>
              </div>

              <p class="test position-fixed col-5 my-3">
              Select Division ,City and Upazila to find the nearest blood bank. You can find out the available blood deteails in their stock. You can also send a blood application for your patient through our system. 
              </p>
            </div>
            <div class="col-lg-6 mb-5 form-content py-5">
              <?php include_once 'partials/msg.php' ?>

              <form method="post" action="searchBloodBank.php">
                <label for="division" class="form-lable">Devision</label>
                <select class="form-select" name="division" id="division">
                  <option value="select-message" selected>
                    Plese Select Your Devision
                  </option>
                </select>

                <label for="city" class="form-lable">City</label>
                <select class="form-select" name="city" id="city">
                  <option value="select-message" selected>
                    Plese Select Your City
                </select>

                <label for="upazila" class="form-lable">Upazila</label>
                <select class="form-select" name="upazila" id="upazila">
                  <option value="select-message" selected>
                    Plese Select Your Upazila
                  </option>
                 
                </select>

                <div class="text-center mt-3 mb-5">
                  <input name="blooadBnkSearch" value="Search" type="submit" class="btn btn-dark">
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
