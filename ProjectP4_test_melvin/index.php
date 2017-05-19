<?php
	require('database.php');
	function getAlleGegevens() {
		require('database.php');
		$sql = "SELECT * FROM opdrachten1";
		$query = mysqli_query($dbc, $sql);
		$opdrachten = array();
		if(mysqli_num_rows($query) > 0) {
			while($row = mysqli_fetch_assoc($query)) {
				array_push($opdrachten, $row['Opdrachtnummer']);
			}
		}
		return $opdrachten;
	}
?>
<!DOCTYPE html>
<html lang="nl">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Over de Rhein</title>
		<link rel="stylesheet" href="css/style.css">
  </head>
  <body>
		<div class="wrapper">
			<div class="header">
				<h2>Over de Rhein</h2>
				<div class="headerTitle">kabelchecklisten3</div>
			</div>
			<div class="nav">
				<div class="navContent">Bestand</div>
				<div class="navContent">Info</div>
			</div>
			<div class="content">
				<form method="post" style="margin-top: 3%;">
					<label>Opdrachtnummer</label>	
					<select name="opdrnm">
						<?php
							$opdrachten = getAlleGegevens();
							foreach($opdrachten as $opdracht) {
								echo "<option value='".$opdracht."'>".$opdracht."</option>";
							}
						?>
					</select>
					<input type="submit" name="submit" value="Haal data op">
					<input type="submit" name="reset" value="Reset">
					<?php
						if(isset($_POST['submit'])) {
							$data = $_POST['opdrnm'];
							$sql = "SELECT DISTINCT * FROM kabelchecklisten3 WHERE Opdrachtnummer = '$data'";
							$query = mysqli_query($dbc, $sql);
							$checklist = '';
							if(mysqli_num_rows($query) > 0) {
								$checklist = "<table border='1' style='margin-top: 3%;'>";
								$checklist = $checklist . "<tr><th>Opdrachtnummer</th><th>KabelId</th><th>Breuk_6D</th><th>Breuk_30D</th><th>Beschadiging_Buitenzijde</th><th>Verminderde_Kabeldiameter</th><th>Positie_Meetpunten</th><th>Beschadiging_Roest_Corrosie</th><th>Beschadiging_Totaal</th><th>Type_Beschadiging_Roestvorming</th></tr>";
								while($row = mysqli_fetch_assoc($query)) {
									$checklist = $checklist . "<tr><td>" . $row["Opdrachtnummer"] . "</td><td>" . $row["KabelId"] . "</td><td>" . $row["Breuk_6D"]. "</td><td>" . $row["Breuk_30D"] . "</td><td>" . $row["Beschadiging_Buitenzijde"] . "</td><td>" . $row["Verminderde_Kabeldiameter"] . "</td><td>" . $row["Positie_Meetpunten"] . "</td><td>" . $row["Beschadiging_Roest_Corrosie"] . "</td><td>" . $row["Beschadiging_Totaal"] . "</td><td>" . $row["Type_Beschadiging_Roestvorming"] . "</td></tr>";
								}
							} else {
								echo "<br><br><br>Er bestaat nog geen data voor deze opdracht";
							}
							$checklist = $checklist . "</table>";
							echo $checklist;
						}
					?>
				</form>
			</div>
			<div class="footer">
				&copy; Copyright 2017 Melvin van Zutphen
			</div>
		</div>
  </body>
</html>