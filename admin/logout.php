<?php 

include_once './admin_includes/admin_function.php';
include_once './admin_includes/admin_session.php';
guard('index.php', 'You must login first');

logout('index.php', 'You must login first');

exit();
?>