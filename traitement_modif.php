<?php

// Initialise Twig
include('include/twig.php');
$twig = init_twig();


// Connexion à la base de données
include('include/connexion.php');
$pdo = connexion();

// Récupération des données : exemples
include('include/select.php');

update_commentaire($pdo, $_POST['keyToModify'], $_POST['pseudo'], $_POST['note'], $_POST['commentaire']);
$host = $_SERVER['HTTP_HOST'];
$extra = "page_commentaires.php";

?>
<h1>Votre commentaire à été modifié. Vous allez être redirigé vers la page des commentaires</h1>

<?php
header("Refresh: 3; url=https://$host/$extra", true, 303);
