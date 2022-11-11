<!-- HASSAN BABIKER WAIL P1802896 MERZOUGUI Sofiene -->

<?php
// index.php fait office de controleur frontal
session_start(); // démarre ou reprend une session
ini_set('display_errors', 1); // affiche les erreurs (au cas où)
ini_set('display_startup_errors', 1); // affiche les erreurs (au cas où)
error_reporting(E_ALL); // affiche les erreurs (au cas où)

require('inc/config_bd.php'); //
require('modele/modele.php'); // inclut le fichier modele
require('inc/routes.php'); // fichiers de routes

$connexion = getConnexionBD(); // connexion à la BD
?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8" />
        <!-- le titre du document, qui apparait dans l'onglet du navigateur -->
        <title>WSGarden</title>
        <!-- lie le style CSS externe  -->
        <link href="css/style.css" rel="stylesheet" media="all" type="text/css">
        <!-- ajoute une image favicon (dans l'onglet du navigateur) -->
        <link rel="shortcut icon" type="image/x-icon" href="img/garden5.png" />
    </head>
    <body>
        <header>
            <a href="index.php">
                <img src="img/garden5.png">
            </a>
            <h1><em>WSGarden</em></h1>
            <p>Prennez soins de votre jardin.</p>
        </header>
        
        <div id="divCentral">
        <nav>
            <ul >
                <li>
                    <a href="index.php">acceuil</a>
                </li>
                <li>
                    <a href="index.php?page=afficher">afficher les parcelles</a>
                </li>
                <li>
                    <a href="index.php?page=ajouter">ajouter</a>
                </li>
                <li>
                    <a href="index.php?page=parcelle">Gérer un parcelle</a>
                </li>
            </ul>
        </nav>
         
        <main>
            <?php
		        $controleur = 'controleurAccueil'; // par défaut, on charge accueil.php
		        $vue = 'vueAccueil'; // par défaut, on charge accueil.php
		        if(isset($_GET['page'])) {
			        $nomPage = $_GET['page'];
			        if(isset($routes[$nomPage])) { // si la page existe dans le tableau des routes, on la charge
				        $controleur = $routes[$nomPage]['controleur'];
				        $vue = $routes[$nomPage]['vue'];
			        }
		        }
		        include('controleurs/' . $controleur . '.php');
		        include('vues/' . $vue . '.php');
		    ?>
		    
        </main>
        
        </div>

        <footer>
            <img src="img/attribution.png">
            <p id="liens">
                <a href="https://perso.liris.cnrs.fr/fabien.duchateau/BDW1/">BDW1</a>
                <a href="https://www.univ-lyon1.fr/">université lyon1</a>
                <a href="https://unsplash.com/">unsplash.com</a>
            </p>
        </footer>

    </body>
</html>
