<?php
include_once './admin_includes/admin_function.php';
include_once './admin_includes/admin_session.php';
include_once './admin_includes/db.php';
guard('index.php', 'You must login first');


if (isset($_POST['addNewFireStation'])) {
    //pr($_POST, true);
    $branch_name =  trim($_POST['branch_name']);
    $email =  trim($_POST['email']);
    $phone =  trim($_POST['phone']);
    $address =  trim($_POST['address']);
    $division =  trim($_POST['division']);
    $city =  trim($_POST['city']);
    $upazila =  trim($_POST['upazila']);

    $sql = "INSERT INTO `fire_services`(`branch_name`, `phone`, `email`, `location`, `division`, `city`, `upazila`) VALUES ('$branch_name','$phone','$email','$address','$division','$city','$upazila')";

    if ($con->query($sql) == true) {
        redirect('fire_service_addnew.php', 'Successfully Added');
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
    }
}
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
                        
                    <li class="nav-list">
                    <a href="messages.php" class="nav-link">Messages</a>
                    </li>
                    </ul>
                    <a href="./logout.php" class="btn btn-brand ms-lg-3">Log Out</a>
                    

                </div>
            </div>
        </nav>
    </header>


    <main>
        <div id="blood-request">
            <div class="container">
                <?php include_once '../partials/msg.php' ?>
                <div class="row">
                    <div class="col-lg-6 d-none d-lg-block">
                        <div class="pt-2 position-fixed">
                            <div class="text-center mt-4">
                                <img class="img-fluid flat-image mb-3" src="../img/registration.png" alt="" />
                            </div>
                            <h2>Add New Fire Service Station</h2>
                        </div>

                        <p class="test position-fixed col-5 my-3">
                        Please carefully add fire service information. After filling the form, please recheck all the information again and keep all the information up-to-date. 
                        </p>
                    </div>
                    <div class="col-lg-6 mb-5 form-content py-5">
                        <form method="post" action="./fire_service_addnew.php">
                            <label for="branch_name" class="form-lable">
                                Branch Name</label>
                            <input type="text" class="form-control" name="branch_name" id="branch_name" required placeholder="e.g. BD Blood Bank" />

                            <label for="email" class="form-lable">E-mail</label>
                            <input type="email" class="form-control" name="email" id="email" required placeholder="e.g. captain@emaxple.com" />
                            <label for="phone" class="form-lable">Phone</label>
                            <input type="text" class="form-control" name="phone" id="phone" required placeholder="e.g 01555566677" />
                            <label for="address" class="form-lable">Address</label>
                            <input type="text" class="form-control" name="address" id="address" required placeholder="e.g. post office: New P.O" />
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
                            <div class="text-center my-3">
                                <input type="submit" value="Submit" name="addNewFireStation" class="btn btn-dark">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <?php include_once '../partials/footer.php' ?>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="../js/script.js"></script>
</body>

</html>