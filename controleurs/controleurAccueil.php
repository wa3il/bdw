<?php
$message = "";
    
    $nb = countInstances($connexion, "VARIETE");
    if($nb <= 0)
        $message = "Aucune varieté n'a été trouvé";
    else
        $message = "Actuellement $nb varieté dans la base de donnée.";


    $nb1 = countInstances($connexion, "PARCELLE");
    if($nb1 <= 0)
        $message2 = "Aucun parcelle n'a été trouvé";
    else
        $message2 = "Actuellement $nb1 parcelle dans la base de donnée.";

    $nb2 = countInstances($connexion, "RANG");
    if($nb2 <= 0)
        $message3 = "Aucun rang n'a été trouvé";
    else
        $message3 = "Actuellement $nb2 rang dans la base de donnée.";
    

?>
