<?

if(isset($_POST['valider'])){
    for($i = $_POST["nbpmin"]; $i< $_POST["nbpmax"]; $i++){
        $nbrang = mysqli_real_escape_string($connexion, $i);
        $insertion = insertRang($connexion,$nbrang);
        if ($insertion == True){
            $message = "le rang $nbrang à bien été ajouter à la base de donnée";
        }
        else {
            $message = "Erreur lors de l'insertion de du rang $nbrang";
        }
    }
    
    
}
?>