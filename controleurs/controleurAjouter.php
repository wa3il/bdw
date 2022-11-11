<?php

if(isset($_POST['boutonValider'])){

    $nomV = mysqli_real_escape_string($connexion, $_POST["nomV"]);
    $amm = mysqli_real_escape_string($connexion, $_POST["amm"]);
    $precoce = mysqli_real_escape_string($connexion, $_POST["precoce"]);
    $descSemis = mysqli_real_escape_string($connexion, $_POST["descSemis"]);
    $descPlantation = mysqli_real_escape_string($connexion, $_POST["descPlantation"]);
    $descEntretien = mysqli_real_escape_string($connexion, $_POST["descEntretien"]);
    $periodeRecolte = mysqli_real_escape_string($connexion, $_POST["periodeRecolte"]);
    $nbJourLevee = mysqli_real_escape_string($connexion, $_POST["nbJourLevee"]);
    $periodeMisePlace = mysqli_real_escape_string($connexion, $_POST["periodeMisePlace"]);
    $commentaireGeneral = mysqli_real_escape_string($connexion, $_POST["commentaireGeneral"]);

    $insertion = insertVariete($connexion, $nomV ,$amm,$precoce, $descSemis, $descPlantation, $descEntretien,$periodeRecolte,$nbJourLevee,$periodeMisePlace,$commentaireGeneral);
    if ($insertion == True){
        $message = "la variété à bien été ajouter à la base de donnée";
    }
    else {
        $message = "Erreur lors de l'insertion de la variété $nomV";
    }
}




/*$request = "INSERT INTO VARIETE(

    nomV,
    amm, 
    precoce, 
    descSemis, 
    descSemis, 
    descPlantation, 
    descEntretien,
    periodeRecolte,
    nbJourLevee,
    periodeMisePlace,
    commentaireGeneral
    
    )
    VALUES (

    $nomV,
    $amm, 
    $precoce, 
    $descSemis, 
    $descSemis, 
    $descPlantation, 
    $descEntretien,
    $periodeRecolte,
    $nbJourLevee,
    $periodeMisePlace,
    $commentaireGeneral

    )";

echo $request;*/

?>