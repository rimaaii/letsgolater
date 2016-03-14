<?php
include("dbconnect.php");

$email = $_POST["email"];
$password = $_POST["password"];
$city = $_POST["city"];

$query = "INSERT INTO user(email, password,city_idcity) VALUES('$email', '$password', '$city')";

echo $query;

$result = mysqli_query($link, $query);

echo "Successfully signed $email up! ";

?>
