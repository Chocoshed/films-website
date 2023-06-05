<?php

// Initialise Twig
include('include/twig.php');
$twig = init_twig();

// Récupère les données GET sur l'URL
if (isset($_GET['id'])) $id = $_GET['id'];
else $id = 0;

// Connexion à la base de données
include('include/connexion.php');
$pdo = connexion();



echo $twig->render('404.twig', []);
