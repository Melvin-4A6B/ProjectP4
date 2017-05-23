<!DOCTYPE html>
<html lang="nl">
<head>
	<meta http-equiv="content-type" content="text/html" charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Over de Rhein</title>
	<link rel="stylesheet" href="rhein_scherm.css">
</head>
<body>
	<div class="helePagina">
		<div class="header">
			<img src="logo.png" height="100%">
			<div class="headerTekst">Hijstabel</div>
		</div>
		<div class="menu">
			<div class="menu_knop" onclick="loadBestand()">Bestand</div>
			<div class="menu_knop" onclick="loadInfo()">Info</div>
		</div>
		<div class="content">
			<form method="post">
				 Opdrachtnummer:
				<select name="opdrachtnummer">
					<?php
						include("rhein_scherm_connectie.php");
						include("rhein_scherm_functies.php");
						$opdrachten = getAlleGegevens();
						foreach($opdrachten as $opdracht){
							if($opdracht == $_POST["opdrachtnummer"]){
							    echo "<option value='". $opdracht ."' selected>" . $opdracht . "</option>";
							} else{
								echo "<option value='". $opdracht ."'>" . $opdracht . "</option>";
							}
						}
					?>
				</select>
				<input type="submit" name="submit" value="Haal data op">   
        	</form>
			<?php
				if(isset($_POST["submit"])) {
					$data = $_POST["opdrachtnummer"];
					$sql = "SELECT * FROM hijstesten2 WHERE opdrachtnummer =' $data '";
					$result = mysqli_query($conn, $sql);
					
					if (mysqli_num_rows($result) > 0) {
						$tabel = "<table border = '1'> <tr><th>Opdrachtnummer</th><th>Volgnummer</th><th>Datum</th><th>Hoofdgiek lengte</th><th>Mech Sectie Gieklengte</th><th>Hulpgiek Lengte</th><th>Hoofdgiek Giekhoek</th><th>Hulpgiek Giekhoek</th><th>Hijstabel Parten</th><th>Zwenhoek</th><th>Massa Ballast</th><th>Bedrijfslast</th><th>LMB In Werking</th><th>Proeflast</th><th>Akkoord</th></tr>";
						
          				while($row = mysqli_fetch_assoc($result)) {
                		$tabel = $tabel . "<tr><td>". $row["opdrachtnummer"]. "</td><td>" . $row["volgnummer"] . "</td><td>" . $row["datum_opgesteld"]. "</td><td>" . $row["hoofdgiek_lengte"] . "</td><td>" . $row["mech_sectie_gieklengte"] . "</td><td>" . $row["hulpgiek_lengte"] . "</td><td>" . $row["hoofdgiek_giekhoek"]. "</td><td>" . $row["hulpgiek_giekhoek"]. "</td><td>" . $row["hijstabel_aantal_parten"]. "</td><td>" . $row["zwenkhoek"]. "</td><td>" . $row["eigen_massa_ballast"]. "</td><td>" . $row["toelaatbare_bedrijfslast"]. "</td><td>" . $row["lmb_in_werking"]. "</td><td>" . $row["proeflast"]. "</td><td>" . $row["akkoord"]."</td></tr>";   
          			} 
						$tabel =  $tabel . "</table>";
						echo $tabel;
				} else{
						echo "Geen data beschikbaar voor dit opdrachtnummer";
					}
			}
			?>
		</div>
		<div class="footer">
			<button onclick="exit()" class="buttonExit">Exit</button>
		</div>
	</div>	
</body>
</html>