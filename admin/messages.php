<?php
include_once './admin_includes/admin_function.php';
include_once './admin_includes/admin_session.php';
include_once './admin_includes/db.php';
guard('index.php', 'You must login first');
$sql = "SELECT * FROM `contact`";
$results = $con->query($sql);

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];

    $sql = "DELETE FROM `contact` WHERE `id` = '$id'";
    // $result = mysqli_query($conn, $sql);
    if ($con->query($sql) == true) {
        //   $sql = "SELECT * FROM `blood_bank` WHERE id = '$id' LIMIT 1";
        //   $result = $con->query($sql);
        //   $_SESSION['user']  = $result->fetch_assoc();
        redirect('messages.php', 'Message Deleted.');
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
            <h3>Messages</h3>


            <div>

                <table class="table table-striped" id="messages">
                    <thead>
                        <tr>
                            <th scope="col">Sl no</th>
                            <th scope="col">Name</th>
                            <th scope="col">E-mail</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Message</th>
                            <th scope="col">Action</th>
                            

                        </tr>
                    </thead>

                    <tbody>
                        <?php $sl = 0;
                         while ($row = $results->fetch_assoc()) :
                            $sl ++;


                            ?>
                            <tr>

                                <td><?php echo $sl ?></td>
                                <td><?php echo $row['name'] ?></td>
                                <td><?php echo $row['email'] ?></td>
                                <td><?php echo $row['phone'] ?></td>
                                <td><?php echo $row['message'] ?></td>
                                <td><button class='delete btn btn-sm btn-danger' id="<?php echo $row['id'] ?>"><i class=" fa-solid fa-trash"></i></button></td>



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
                    window.location = `messages.php?delete=${id}`;
                    // TODO: Create a form and use post request to submit a form
                } else {
                    console.log("no");
                }
            })
        })
    </script>
</body>

</html>