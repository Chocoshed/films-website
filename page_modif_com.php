<?php

// Initialise Twig
include('include/twig.php');
$twig = init_twig();


// Connexion à la base de données
include('include/connexion.php');
$pdo = connexion();

// Récupération des données : exemples
include('include/select.php');
$id = intval($_POST["keyToModify"]);

$commentaire = select_com_by_id($pdo, $id);


// Lancement du moteur Twig avec les données

echo $twig->render('page_modif_com.twig', [
    'com' => $commentaire
]);
