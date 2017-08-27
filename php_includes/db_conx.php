<?php
$connection=mysqli_connect("mysql://mysql:3306/","root","T24091996","sampledb");
// check for connection
if (mysqli_connect_errno())
    {
	echo mysqli_connect_error();
    exit();
	}

?>
