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
$films = select_films_article($pdo, $id);
$genres = select_films_genres($pdo, $id);
$origine = select_origine($pdo, $id);

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
   if (!empty($_POST['pseudo']) && !empty($_POST['note']) && !empty($_POST['commentaire'])) {
      post_commentaire($pdo, $id);
   } else {
      echo '<script>alert("Formulaire incomplet")</script>';
   }
}


$select_commentaires = select_commentaires($pdo, $id);

if (!empty($select_commentaires)) {
   $moyenne = moyenne_note($pdo, $id);
} else {
   $moyenne = 'Aucune note';
}

// Lancement du moteur Twig avec les données
echo $twig->render('films_article.twig', [
   'films' => $films,
   'genres' => $genres,
   'origines' => $origine,
   'commentaires' => $select_commentaires,
   'id' => $id,
   'moyenne' => $moyenne
]);
