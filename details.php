<html>
<head>
	<title>letsgolater</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<?php include("dbconnect.php"); ?>

</head>
<body>
<h1>letsgolater</h1>
<h2>All Events</h2>
<?php 

$idevent = $_GET["idevent"];

/* Querying the database */
$query = "SELECT * FROM event WHERE idevent = $idevent";
$result = mysqli_query($link, $query);
while ($row = mysqli_fetch_assoc($result)):
//var_dump($row);
/* Output the event price and the description */
/* Update event photos */
?>
<div class="box">
<a href="details.php">	
<img src="<?= $row["photo"] ?>">
<h3><?= $row["name"]; ?></h3>
</a>
</div>
<?php endwhile; ?>



</body>
</html>
