<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/style.css" />

    <title>Info & Help</title>
</head>

<body>

    <?php include_once 'partials/navbar.php' ?>
    <main>
        <div class="container">
            <div class="row my-3">

                <!-- Doctor logo -->
                <div class="col-3 mx-5 flat-image">
                    <div class="flat-image ">
                        <img src="img/medical-team.png" alt="">
                    </div>
                </div>
                <div class="col-6 my-2"></div>
                <div class="col-4">
                    <form action="">
                        <div class="d-flex">
                        <select class="form-select" name="ambulance_type" id="ambulance_type">
                            <option value="AC" selected>Select Deparment</option>
                        </select>
                        <button type="submit" name="send_message" class="btn btn-dark ms-2">filter</button>
                        </div>
                    </form>


                    </select>
                </div>
            </div>
            <h3>Doctor List of : BSMMU Hospital </h3>
            <div class="row">


                <div class="col-6  d-block d-lg-flex">
                    <div class="blook-bank-card propertiys">
                        <div class="row">
                            <div class="col-4">
                                <img src="img/man.jpg" alt="">
                            </div>
                            <div class="col-8">
                                <h4>Dr. Abdullah</h4>
                                <p>Qualifications: MBBS, FCPS</p>
                                <p>Specialty: Consultant, Pediatric Surgery </p>
                                <p>Chamber Time: 5.00 PM -7.00 PM </p>
                                <p>Off Day: Friday & Govt. Holidays </p>
                            </div>

                        </div>

                    </div>


                </div>
            </div>
        </div>
        </div>
    </main>

    <?php include_once 'partials/footer.php' ?>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>