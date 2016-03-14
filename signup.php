<html>
<head>
	<title>letsgolater</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<?php include("dbconnect.php"); ?>

</head>
<body>
<h1>letsgolater</h1>
<h2>Sign Up</h2>
<?php 


/* Querying the database */
//$query = "SELECT * FROM event WHERE idevent = $idevent";
//$result = mysqli_query($link, $query);
?>

<form action="doSignup.php" method="post">
<label>Email</label>
<input id="email" name="email" type="text">
<label>Password</label>
<input id="password" type="password" name="password">
<label>City</label>
<select id="city" name="city">
	<option value="1">Miami</option>
	<option value="6">Fort Lauderdale</option>
</select>
<input type="submit" value="Sign Up">
</form>


</body>
</html>
