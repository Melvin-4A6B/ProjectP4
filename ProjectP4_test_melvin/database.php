<?php
	$dbc = mysqli_connect('localhost', 'root', '', 'over_de_rhein_test_melvin');
	if(!$dbc) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
?>