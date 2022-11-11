<?php
// connexion à la BD, retourne un lien de connexion
function getConnexionBD() {
	$connexion = mysqli_connect(SERVEUR, UTILISATRICE, MOTDEPASSE, BDD);
	if (mysqli_connect_errno()) {
	    printf("Échec de la connexion : %s\n", mysqli_connect_error());
	    exit();
	}
	return $connexion;
}

// déconnexion de la BD
function deconnectBD($connexion) {
	mysqli_close($connexion);
}



// nombre d'instances d'une table $nomTable
function countInstances($connexion, $nomTable) {
	$requete = "SELECT COUNT(*) AS nb FROM $nomTable";
	$res = mysqli_query($connexion, $requete);
	if($res != FALSE) {
		$row = mysqli_fetch_assoc($res);
		return $row['nb'];
	}
	return -1;  // valeur négative si erreur de requête (ex, $nomTable contient une valeur qui n'est pas une table)
}

// retourne les instances d'une table $nomTable
function getInstances($connexion, $nomTable) {
	$requete = "SELECT * FROM $nomTable";
	$res = mysqli_query($connexion, $requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}

function insertVariete($connexion, $nomV ,$amm,$precoce, $descSemis, $descPlantation, $descEntretien,$periodeRecolte,$nbJourLevee,$periodeMisePlace,$commentaireGeneral) {
    //$nomV = mysqli_real_escape_string($connexion, $nomV); // au cas provient d'un formulaire
    $requete = "INSERT INTO `VARIETE` (`idV`, `nomV`, `amm`, `precoce`, `descSemis`, `descPlantation`, `descEntretien`, `descRecolte`, `nbJourLevee`, `periodeMisePlace`, `periodeRecolte`, `commentaireGeneral`, `idR`) VALUES (NULL, '$nomV', '$amm', '$precoce', '$descSemis', '$descPlantation', '$descEntretien', '$periodeRecolte', '$nbJourLevee', '12', '$periodeMisePlace', '$commentaireGeneral', NULL)";
    $res = $connexion->query($requete);
    return $res;
}


function insertRang($connexion, $numR){
	$requete = "INSERT INTO `RANG` (`numR`,`coordRX`,`coordRY`,`idP`) VALUES ('$numR',NULL,NULL,'1')";
	$res = $connexion->query($requete);
    return $res;
}

?>