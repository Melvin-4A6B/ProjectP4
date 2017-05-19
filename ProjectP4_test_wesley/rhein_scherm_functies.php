<?php 
   		function getAlleGegevens() {  
       
		include("rhein_scherm_connectie.php");

        $sql = "SELECT * FROM opdrachten1";
        $result = mysqli_query($conn, $sql);
        $opdrachten = array();
        if (mysqli_num_rows($result) > 0) {
          
          
            while($row = mysqli_fetch_assoc($result)) {
                array_push($opdrachten, $row["opdrachtnummer"]);     
            }
				
        } 

      	return $opdrachten;
    }

?>