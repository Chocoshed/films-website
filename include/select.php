<?php

function select_films($pdo)
{
  $sql = "SELECT * FROM films";
  $query = $pdo->prepare($sql);
  $query->execute();

  // vérification des erreurs
  if ($query->errorCode() == '00000') {
    // récupération des données dans un tableau
    $tableau = $query->fetchAll(PDO::FETCH_ASSOC);
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  // renvoie le tableau
  return $tableau;
}

function select_films_article($pdo, $id)
{
  $sql = "SELECT * FROM films WHERE films.id_film = :id";
  $query = $pdo->prepare($sql);
  $query->bindValue(':id', $id, PDO::PARAM_INT);
  $query->execute();

  // vérification des erreurs
  if ($query->errorCode() == '00000') {
    // récupération des données dans un tableau
    $tableau = $query->fetch(PDO::FETCH_ASSOC);
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  // renvoie le tableau
  return $tableau;
}

function select_origine($pdo, $id)
{
  $sql = "SELECT * FROM origines 
          JOIN films ON films.id_origine = origines.id_origine
          WHERE films.id_film = :id";
  // préparation et exécution de la requête
  $query = $pdo->prepare($sql);
  $query->bindValue(':id', $id, PDO::PARAM_INT);
  $query->execute();

  // vérification des erreurs
  if ($query->errorCode() == '00000') {
    // récupération de la première ligne
    $tableau = $query->fetch(PDO::FETCH_ASSOC);
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  return $tableau;
}

function get_all_genres($pdo)
{
  $sql = "SELECT * FROM genres";
  $query = $pdo->prepare($sql);
  $query->execute();

  // vérification des erreurs
  if ($query->errorCode() == '00000') {
    // récupération des données dans un tableau
    $tableau = $query->fetchAll(PDO::FETCH_ASSOC);
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  // renvoie le tableau
  return $tableau;
}

function get_all_origines($pdo)
{
  $sql = "SELECT * FROM origines";

  $query = $pdo->prepare($sql);
  $query->execute();

  // vérification des erreurs
  if ($query->errorCode() == '00000') {
    // récupération des données dans un tableau
    $tableau = $query->fetchAll(PDO::FETCH_ASSOC);
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  // renvoie le tableau
  return $tableau;
}

function select_films_genres($pdo, $id)
{
  $sql = "SELECT genre
          FROM genres
          JOIN films_genres
          ON films_genres.id_genre = genres.id_genre
          WHERE id_film = :id";

  $query = $pdo->prepare($sql);
  $query->bindValue(':id', $id, PDO::PARAM_INT);
  $query->execute();

  // vérification des erreurs
  if ($query->errorCode() == '00000') {
    // récupération de la première ligne
    $tableau = $query->fetchAll(PDO::FETCH_ASSOC);
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  return $tableau;
}

function select_film_by_idarray($pdo, $array)
{

  $sql = "SELECT * FROM films
          WHERE id_film IN (" . implode(',', $array) . ")
          ORDER BY titre_film";
  $query = $pdo->prepare($sql);
  $query->execute();
  return $query->fetchAll();
}


function select_films_selected_genres($pdo)
{
  // Récupérer les critères cochés dans le formulaire

  if (empty($_POST['origine'])) {
    $selected_genres = array_map('intval', $_POST['genre']);
    $length_genres = count($selected_genres);

    $sql =
      "SELECT films_genres.id_film FROM films_genres
    WHERE films_genres.id_genre IN (" . implode(',', $selected_genres) . ")
    GROUP BY films_genres.id_film
    HAVING COUNT(DISTINCT films_genres.id_genre) = :length_selected_genres";

    // préparation et exécution de la requête
    $query = $pdo->prepare($sql);

    // lier les valeurs du tableau $selected_genres aux marqueurs de paramètres nommés
    $query->bindValue(':length_selected_genres', $length_genres, PDO::PARAM_INT);
  } elseif (empty($_POST['genre'])) {
    $selected_origines = array_map('intval', $_POST['origine']);

    $sql =
      "SELECT films.id_film FROM films
    WHERE films.id_origine IN (" . implode(',', $selected_origines) . ")";

    // préparation et exécution de la requête
    $query = $pdo->prepare($sql);
  } else {

    $selected_genres = array_map('intval', $_POST['genre']);
    $selected_origines = array_map('intval', $_POST['origine']);
    $length_genres = count($selected_genres);

    $sql =
      "SELECT films_genres.id_film FROM films_genres
    JOIN films ON films.id_film = films_genres.id_film
    WHERE films_genres.id_genre IN (" . implode(',', $selected_genres) . ") AND films.id_origine IN (" . implode(',', $selected_origines) . ")
    GROUP BY films_genres.id_film
    HAVING COUNT(DISTINCT films_genres.id_genre) = :length_selected_genres";

    // préparation et exécution de la requête
    $query = $pdo->prepare($sql);

    // lier les valeurs du tableau $selected_genres aux marqueurs de paramètres nommés

    $query->bindValue(':length_selected_genres', $length_genres, PDO::PARAM_INT);
  }

  $query->execute();

  // vérification des erreurs
  if ($query->errorCode() == '00000') {
    $result = $query->fetchAll();
    $id_films = array_column($result, 'id_film');
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $id_films = null;
  }

  return $id_films;
}


function post_commentaire($pdo, $id)
{
  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $pseudo = htmlspecialchars(strip_tags($_POST['pseudo']));
    $note = htmlspecialchars(strip_tags($_POST['note']));
    $commentaire = htmlspecialchars(strip_tags($_POST['commentaire']));
    // Traitement des données soumises par le formulaire
  }


  $sql = "INSERT INTO commentaires (pseudo, note, commentaire, id_film)
          VALUES (:pseudo, :note, :commentaire, :id)";

  $query = $pdo->prepare($sql);
  $query->bindValue(':pseudo', $pseudo);
  $query->bindValue(':note', $note);
  $query->bindValue(':commentaire', $commentaire);
  $query->bindValue(':id', $id);
  $query->execute();
}

function update_commentaire($pdo, $id, $pseudo, $note, $commentaire)
{
  $pseudo = htmlspecialchars(strip_tags($pseudo));
  $note = htmlspecialchars(strip_tags($note));
  $commentaire = htmlspecialchars(strip_tags($commentaire));

  $sql = "UPDATE commentaires SET pseudo = :pseudo,
  note = :note,
  commentaire = :commentaire WHERE id_commentaire = :id";
  $query = $pdo->prepare($sql);
  $query->bindValue(':pseudo', $pseudo);
  $query->bindValue(':note', $note);
  $query->bindValue(':commentaire', $commentaire);
  $query->bindValue(':id', $id);
  $query->execute();
}

function select_commentaires($pdo, $id)
{
  $sql = "SELECT * FROM commentaires WHERE :id = id_film";

  $query = $pdo->prepare($sql);
  $query->bindValue(':id', $id, PDO::PARAM_INT);
  $query->execute();
  // vérification des erreurs
  if ($query->errorCode() == '00000') {
    // récupération des données dans un tableau
    $tableau = $query->fetchAll(PDO::FETCH_ASSOC);
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  // renvoie le tableau
  return $tableau;
}

function select_commentaires_films($pdo)
{
  $sql = "SELECT note, pseudo, id_commentaire, commentaires.id_film, commentaire, titre_film, image_film
  FROM commentaires
  JOIN films ON films.id_film = commentaires.id_film";

  $query = $pdo->prepare($sql);
  $query->execute();

  if ($query->errorCode() == '00000') {
    $tableau = $query->fetchAll(PDO::FETCH_ASSOC);
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  // renvoie le tableau
  return $tableau;
}

function moyenne_note($pdo, $id)
{
  $sql = "SELECT ROUND(AVG(note), 1) AS moyenne FROM commentaires WHERE :id = id_film";

  $query = $pdo->prepare($sql);
  $query->bindValue(':id', $id, PDO::PARAM_INT);
  $query->execute();
  // vérification des erreurs
  if ($query->errorCode() == '00000') {

    $moyenne = $query->fetchColumn();
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $moyenne = null;
  }

  return $moyenne;
}


function supprimer_commentaire($pdo, $id)
{

  $sql = "DELETE FROM commentaires WHERE id_commentaire = :id";

  $query = $pdo->prepare($sql);
  $query->bindValue(':id', $id);
  $query->execute();
}

function select_com_by_id($pdo, $id)
{
  $sql = "SELECT * FROM commentaires WHERE id_commentaire = :id";

  $query = $pdo->prepare($sql);
  $query->bindValue(':id', $id, PDO::PARAM_INT);
  $query->execute();

  // vérification des erreurs
  if ($query->errorCode() == '00000') {

    $tableau = $query->fetch();
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  return $tableau;
}
