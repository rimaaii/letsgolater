<html>
<head>
	<title>letsgolater</title>
	<?php include("dbconnect.php"); ?>
<style>
img{
	width: 150px;
}
</style>	
</head>
<body>
<h1>letsgolater</h1>
<h2>All Events</h2>
<?php 

$event1 = "The Nutcracker";
/* create variable called photo1 */
/* echo it inside the image source */
$photo1 = "http://www.arshtcenter.org/Global/Plays/2014/Miami%20City%20Ballet/The%20Nutcracker/snow-group-690x310.jpg";

/* Create event2 and photo2 variables */
/* Use them in the output below*/
$event2 = "ULTRA";
$photo2 = "https://upload.wikimedia.org/wikipedia/commons/a/a7/Ultra-music-festival-week-1-miami-fl-2013.jpg";

/* Using an associative array */
$event["name"] = "Miami Critical Mass";
$event["photo"] = "http://www.beachedmiami.com/wp-content/uploads/2012/07/69a1bbf8c24011e1b00112313800c5e4_7.jpeg";
/* add an event date to event array*/
/* output event date */
$event["date"] = "Friday, March 11th 2016";

/* Querying the database */
$query = "SELECT * FROM event;";
$result = mysqli_query($link, $query);

while ($row = mysqli_fetch_assoc($result)):
//var_dump($row);
/* Output the event price and the description */
/* Update event photos */
?>
<div>
<img src="<?= $row["photo"] ?>">
<h3><?= $row["name"]; ?></h3>
<h4><?= $row["description"]; ?></h4>
<h4><?= $row["price"]; ?></h4>
</div>
<?php endwhile; ?>

<div>
<img src="<?= $event["photo"] ?>">
<h3><?= $event["name"]; ?></h3>
<h4><?= $event["date"]; ?></h4>
</div>
<div>
<div>
<img src="<?= $photo1 ?>">
<h3><?= $event1; ?></h3>
</div>
<div>
<img src="<?= $photo2 ?>">
<h3><?= $event2; ?></h3>
</div>
<div>
<img src="http://placehold.it/350x150">
<h3>ULTRA</h3>
</div>
</body>
</html>
