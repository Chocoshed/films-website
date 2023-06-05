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

include('include/select.php');
$commentaires = select_commentaires_films($pdo);


if (isset($_POST['keyToDelete'])) {
    $id = intval($_POST['keyToDelete']);
    supprimer_commentaire($pdo, $id);
    $commentaires = select_commentaires_films($pdo);


    echo $twig->render('page_commentaires.twig', [
        'commentaires' => $commentaires
    ]);
} else {
    echo $twig->render('page_commentaires.twig', [
        'commentaires' => $commentaires
    ]);
};



// echo $twig->render('page_commentaires.twig', [
//     'commentaires' => $commentaires
// ]);
