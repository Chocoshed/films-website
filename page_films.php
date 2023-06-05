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

// Récupération des données : exemples
include('include/select.php');
$films = select_films($pdo);
$all_genres = get_all_genres($pdo);
$all_origines = get_all_origines($pdo);


if ($_SERVER['REQUEST_METHOD'] == 'POST' && !empty($_POST)) {
    //$films ici correspond aux id_films après recherche
    $films = [];
    $id_films = select_films_selected_genres($pdo);

    if (!empty($id_films)) {
        $films = select_film_by_idarray($pdo, $id_films);
    }
    $nbfilms = count($films);

    echo $twig->render('liste_films.twig', [
        'films' => $films,
        'id' => $id,
        'all_genres' => $all_genres,
        'all_origines' => $all_origines,
        'nbfilms' => $nbfilms
    ]);
} else {
    $nbfilms = count($films);
    echo $twig->render('liste_films.twig', [
        'films' => $films,
        'id' => $id,
        'all_genres' => $all_genres,
        'all_origines' => $all_origines,
        'nbfilms' => $nbfilms
    ]);
}
