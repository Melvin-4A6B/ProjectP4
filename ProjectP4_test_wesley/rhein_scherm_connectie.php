<?php
			$conn = mysqli_connect('localhost', 'root', '', 'over_de_rhein_test_wesley');
			if(!$conn) {
				echo "Failed to connect to MySQL: " . mysqli_connect_error();
			} 
?>