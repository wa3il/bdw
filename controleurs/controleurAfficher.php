  
<?php 
$message = "";

// recupération des variete
$varietes = getInstances($connexion, "VARIETE");
if($varietes == null || count($varietes) == 0) {
	$message .= "Aucune variete n'a été trouvée dans la base de données !";
}

?>

