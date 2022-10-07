<?php
include_once './admin_includes/admin_function.php';
include_once './admin_includes/admin_session.php';
include_once './admin_includes/db.php';
guard('index.php', 'You must login first');
$sql = "SELECT * FROM `police`";
$results = $con->query($sql);


if (isset($_GET['delete'])) {
    $id = $_GET['delete'];

    $sql = "DELETE FROM `police` WHERE `id` = '$id'";
    // $result = mysqli_query($conn, $sql);
    if ($con->query($sql) == true) {
        //   $sql = "SELECT * FROM `blood_bank` WHERE id = '$id' LIMIT 1";
        //   $result = $con->query($sql);
        //   $_SESSION['user']  = $result->fetch_assoc();
        redirect('police_info.php', 'Information Successfullay Updated.');
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
    }
}

if (isset($_POST['editFireSerInfo'])) {
    //pr($_POST, true);
    $branch_name =  trim($_POST['branch_name']);
    $email =  trim($_POST['email']);
    $phone =  trim($_POST['phone']);
    $address =  trim($_POST['address']);
    $division =  trim($_POST['division']);
    $city =  trim($_POST['city']);
    $upazila =  trim($_POST['upazila']);
    $id =  trim($_POST['police_id']);

    $sql = "UPDATE `police` SET `branch_name`='$branch_name',`phone`='$phone',`email`='$email',`location`='$address',`division`='$division',`city`='$city',`upazila`='$upazila' WHERE `id`= '$id' ";

    if ($con->query($sql) == true) {
        //   $sql = "SELECT * FROM `blood_bank` WHERE id = '$id' LIMIT 1";
        //   $result = $con->query($sql);
        //   $_SESSION['user']  = $result->fetch_assoc();
        redirect('police_info.php', 'Information Successfullay Updated.');
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
    <link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
            <h3>Fire Service Stations Info</h3>

            <div>

                <table class="table table-striped" id="messages">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Branch Name</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Email</th>
                            <th scope="col">Location</th>
                            <th scope="col">City</th>
                            <th scope="col">Upazila</th>
                            <th scope="col">Action</th>

                        </tr>
                    </thead>

                    <tbody>
                        <?php while ($row = $results->fetch_assoc()) : ?>
                            <tr>

                                <td><?php echo $row['id'] ?></td>
                                <td><?php echo $row['branch_name'] ?></td>
                                <td><?php echo $row['phone'] ?></td>
                                <td><?php echo $row['email'] ?></td>
                                <td><?php echo $row['location'] ?></td>
                                <td><?php echo $row['city'] ?></td>
                                <td><?php echo $row['upazila'] ?></td>
                                <td>
                                    <button type="button" class="btn btn-sm btn-dark" data-bs-toggle="modal" data-bs-target="#editFire_<?php echo $row['id'] ?>">
                                        <i class="fa-solid fa-pen-to-square"></i>
                                    </button>
                                    <button class='delete btn btn-sm btn-danger' id="<?php echo $row['id'] ?>"><i class="delete fa-solid fa-trash" id="<?php echo $row['id'] ?>"></i></button>
                                </td>



                                <div class=" modal fade" id="editFire_<?php echo $row['id'] ?>" tabindex="-1" aria-labelledby="edit_fire_service_info" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="edit_fire_service_info">Edit Info</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form method="post" action="./police_info.php">
                                                    <label for="blood-bank-name" class="form-lable">
                                                        Organization Name</label>
                                                    <input type="text" class="form-control" name="branch_name" id="blood-bank-name" required placeholder="e.g. BD Blood Bank" value="<?php echo $row['branch_name'] ?>" />

                                                    <label for="email" class="form-lable">E-mail</label>
                                                    <input type="email" class="form-control" name="email" id="email" required placeholder="e.g. captain@emaxple.com" value="<?php echo $row['email'] ?>" />
                                                    <label for="phone" class="form-lable">Phone</label>
                                                    <input type="text" class="form-control" name="phone" id="phone" required placeholder="e.g 01555566677" value="<?php echo $row['phone'] ?>" />
                                                    <label for="address" class="form-lable">Address</label>
                                                    <input type="text" class="form-control" name="address" id="address" required placeholder="e.g. post office: New P.O" value="<?php echo $row['location'] ?>" />



                                                    <label for="division" class="form-lable">Devision</label>
                                                    <select class="form-select division" name="division" >
                                                        <option value="<?php echo $row['division'] ?>" selected>
                                                            <?php echo $row['division'] ?>
                                                        </option>
                                                    </select>
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <label for="city" class="form-lable">City</label>
                                                            <select class="form-select" name="city" id="city">
                                                                <option value="<?php echo $row['city'] ?>" selected>
                                                                    <?php echo $row['city'] ?>
                                                                </option>
                                                            </select>
                                                        </div>
                                                        <div class="col-6">
                                                            <label for="upazila" class="form-lable">Upazila</label>
                                                            <select class="form-select" name="upazila" id="upazila">
                                                                <option value="<?php echo $row['upazila'] ?>" selected>
                                                                    <?php echo $row['upazila'] ?>
                                                                </option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <input type="hidden" name="police_id" value="<?php echo $row['id'] ?>">

                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                        <input type="submit" value="Submit" name="editFireSerInfo" class="btn btn-dark">
                                                    </div>
                                                </form>
                                            </div>

                                        </div>
                                    </div>
                                </div>




                            </tr>
                        <?php endwhile ?>
                    </tbody>
                </table>

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

    <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#messages').DataTable();
        });
    </script>


    <script>
        deletes = document.getElementsByClassName('delete');
        Array.from(deletes).forEach((element) => {
            element.addEventListener("click", (e) => {
                console.log("edit ");
                let id = e.target.id.substr(0);
                console.log(id)

                if (confirm("Are you sure you want to delete!")) {
                    console.log("yes");
                    window.location = `police_info.php?delete=${id}`;
                    // TODO: Create a form and use post request to submit a form
                } else {
                    console.log("no");
                }
            })
        })
    </script>


    <script src="../js/script.js"></script>
</body>

</html>