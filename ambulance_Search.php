<?php
include_once 'includes/function.php';
include_once 'includes/session.php';
include_once 'config/db.php';
// guard('login.php', 'You must login first');

if (isset($_POST['ambulanceSearch'])) {
    $division = trim($_POST['division']);
    $city = trim($_POST['city']);
    $upazila = trim($_POST['upazila']);

    $sql = "SELECT * FROM `ambulance` WHERE division = '$division' AND  city = '$city' AND upazila = '$upazila' ";
    $results = $con->query($sql);

    if ($results->num_rows == 0)
        redirect('ambulance.php', 'No results found', 'danger');
}


else if (isset($_POST['send_message'])) {
    //pr($_POST, true);

    $ambulance_type =  trim($_POST['ambulance_type']);
    $date_of_departing =  trim($_POST['date_of_departing']);
    $source_address =  trim($_POST['source_address']);
    $destination_address =  trim($_POST['destination_address']);
    $customer_name =  trim($_POST['customer_name']);
    $contact_number =  trim($_POST['contact_number']);
    $ambulance_id =  trim($_POST['ambulance_id']);


    


    $sql = "INSERT INTO `ambulance_booking` (`ambulance_type`, `departing_date`, `source_address`, `destination_address`, `customer_name`, `contact_number`,`ambulance_id`) VALUES ('$ambulance_type', '$date_of_departing', '$source_address', '$destination_address', '$customer_name', '$contact_number', '$ambulance_id')";






    if ($con->query($sql) == true) {
        redirect('ambulance.php', 'Your Application is Recived. We will Contact you as soon as possiable.');
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
    }
} else {
    redirect('ambulance.php');
}



?>


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
            <div class="row">
                <?php while ($row = $results->fetch_assoc()) : ?>

                    <div class="col-lg-6 col-sm-12  d-block d-lg-flex">
                        <div class="blook-bank-card propertiys">
                            <h2><?php echo $row['org_name'] ?></h2>
                            <ul>
                                <li>Phone : <?php echo $row['phone'] ?></li>
                                <li>Email: <?php echo $row['email'] ?></li>
                                <li>Address : <?php echo $row['address'] ?>, <?php echo $row['upazila'] ?> , <?php echo $row['city'] ?></li>
                                </li>
                                <li>Status :<?php echo $row['status'] ?></li>
                                <li>Available Ambulances :</li>
                                <li>&emsp;&emsp;AC Ambulance&nbsp; : <?php echo $row['ac'] ?>&nbsp;&emsp;&emsp;&emsp;&nbsp;&emsp;Non-AC Ambulance &nbsp;: <?php echo $row['non_ac'] ?></li>
                                <li>&emsp;&emsp;ICU Ambulance : <?php echo $row['icu'] ?>&nbsp;&emsp;&emsp;&emsp;&emsp;HDU Ambulance &emsp;&emsp;: <?php echo $row['hdu'] ?></li>
                                <li>&emsp;&emsp;Air Ambulance &nbsp;: <?php echo $row['air'] ?>&nbsp;&emsp;&emsp;&emsp;&emsp;Frezing Ambulance &nbsp;&nbsp;&nbsp;: <?php echo $row['frezing'] ?></li>
                            </ul>

                            <div class="text-center my-3">

                                <!-- Button trigger modal -->
                                <button type="submit" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#ambulance_id_<?php echo $row['id'] ?>">
                                    Send Message
                                </button>



                            </div>
                        </div>



                    </div>
                    <div class="modal fade" id="ambulance_id_<?php echo $row['id'] ?>" tabindex="-1" aria-labelledby="bloodApplicationLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="bloodApplicationLabel"><?php echo $row['org_name'] ?></h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">




                                    <!-- <--Form in Modal-->


                                    <form method="POST" action="./ambulance_Search.php">



                                        <label for="ambulance-type" class="form-lable">Ambulance Type</label>
                                        <select class="form-select" name="ambulance_type" id="ambulance_type">
                                            <option value="AC" selected>AC Ambulance</option>
                                            <option value="Non AC">Non AC Ambulance</option>
                                            <option value="ICU ">ICU Ambulance</option>
                                            <option value="CCU">HDU Ambulance</option>
                                            <option value="Frezing">Frezing Ambulance</option>
                                            <option value="Air">Air Ambulance</option>

                                        </select>




                                        <label for="date" class="form-lable">Departing Date</label>
                                        <input type="text" class="form-control" name="date_of_departing" id="date" placeholder="DD/MM/YYYY" required />
                                        <label for="source_address" class="form-lable">From</label>
                                        <input type="text" class="form-control" name="source_address" id="address" required placeholder="e.g. Dhanmondi" />
                                        <label for="destination_address" class="form-lable">To</label>
                                        <input type="text" class="form-control" name="destination_address" id="address" required placeholder="e.g. Noakhali" />
                                        <label for="customer-name" class="form-lable">Applicant Name</label>
                                        <input type="text" class="form-control" name="customer_name" id="customer_name" required placeholder="e.g. Maria" />

                                        <label for="contact_number" class="form-lable">Contact Number:</label>
                                        <input type="tel" class="form-control" name="contact_number" id="phone" required placeholder="e.g 01555566677" />

                                        <!-- id can not found properly -->

                                        <input type="hidden" name="ambulance_id" value="<?php echo $row['id'] ?>">

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            <button type="submit" name="send_message" class="btn btn-dark">Send Message</button>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                <?php endwhile ?>
            </div>
        </div>
    </main>

    <?php include_once 'partials/footer.php' ?>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>