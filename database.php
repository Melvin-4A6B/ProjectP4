<?php
	$dbc = mysqli_connect('localhost', 'root', '', 'over_de_rhein');
	if(!$dbc) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
?>