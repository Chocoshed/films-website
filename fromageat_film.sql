-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 29 mai 2023 à 21:48
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fromageat_film`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id_commentaire` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `note` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `id_film` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id_commentaire`, `pseudo`, `note`, `commentaire`, `id_film`) VALUES
(13, 'je dors', 1, 'salu', 24),
(14, 'ygrufie', 5, 'dryueia', 1),
(15, 'gfds', 2, 'test', 1),
(16, 'nanou', 5, 'super film j&#039;aime trop !!! ça rend heureux :)).', 30),
(17, 'nanou', 5, 'nanou la seigneure des zahnow valide à fond !!!! film incroyable !!!', 10),
(18, 'Cheeteau', 5, 'Sympa le film', 1),
(19, 'nanou', 5, 'je l\'ai pas vu mais on va dire qu\'il était cool !! je connais la musique avec le violon là', 1),
(20, 'nanou', 5, 'OH PUNAISE OUIII COMMENT IL ETAIT COOL !!!', 4),
(21, 'nanou', 5, 'je suis amoureuse de la madame', 6),
(22, 'nanou', 5, 'C\'EST L\'HISTOIRE DE LA VIEEEEEEEEE', 14),
(23, 'nanou', 5, 'j\'ai trop pleuré sur ce film il est incroyable, mega touchant et c\'est important de pouvoir voir en quelques sortes un témoignage mais en film de la guerre', 28),
(24, 'nanou', 5, 'ohh the green mile !!!! je l\'ai vu y\'a méga longtemps il est cool !!', 19),
(25, 'nanou', 5, 'nanou note : 5/5 Imagine un commentaire dans un commentaire', 29),
(26, 'nanou', 5, 'DODOODODODOOODOODOOO JONNY BE GOOD', 18);

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id_film` int(11) NOT NULL,
  `titre_film` varchar(255) DEFAULT NULL,
  `duree_film` int(11) DEFAULT NULL,
  `annee_film` int(11) DEFAULT NULL,
  `id_origine` int(11) NOT NULL,
  `synopsis_film` text DEFAULT NULL,
  `image_film` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id_film`, `titre_film`, `duree_film`, `annee_film`, `id_origine`, `synopsis_film`, `image_film`) VALUES
(1, 'Le Parrain', 177, 1972, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/leparrain.jpg'),
(2, 'Pulp Fiction', 154, 1994, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/pulpfiction.jpg'),
(3, 'Forrest Gump', 142, 1994, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/forrestgump.jpg'),
(4, 'Les Évadés', 142, 1994, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/lesevades.jpg'),
(5, 'Titanic', 195, 1997, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/titanic.jpg'),
(6, 'Matrix', 136, 1999, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/matrix.jpg'),
(7, 'The Dark Knight', 152, 2008, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/thedarkknight.jpg'),
(8, 'Gladiator', 155, 2000, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/gladiator.jpg'),
(9, 'Le Silence des agneaux', 178, 1991, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/lesilencedesagneaux.jpg'),
(10, 'Le Seigneur des anneaux : La Communauté de l\'anneau', 178, 2001, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/leseigneurdesanneaux.jpg'),
(11, 'Fight Club', 139, 1999, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/fightclub.jpg'),
(12, 'Jurassic Park', 127, 1993, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/jurassicpark.jpg'),
(13, 'Star Wars : Episode IV - Un nouvel espoir', 121, 1977, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/starwarsunnouvelespoir.jpg'),
(14, 'Le Roi Lion ', 88, 1994, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/leroilion.jpg'),
(15, 'Les Affranchis', 146, 1990, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/lesaffranchis.jpg'),
(16, 'Il faut sauver le soldat Ryan', 169, 1998, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/ilfautsauverlesoldatryan.jpg'),
(17, 'Terminator', 167, 1984, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/terminator.jpg'),
(18, 'Retour vers le futur ', 176, 1985, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/retourverslefutur.jpg'),
(19, 'La Ligne verte', 189, 1999, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/laligneverte.jpg'),
(20, 'Sixième Sens', 107, 1999, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/sixiemesens.jpg'),
(21, 'L\'Exorciste ', 122, 1973, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/lexorciste.jpg'),
(22, 'Dirty Dancing', 100, 1987, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/dirtydancing.jpg'),
(23, 'American Beauty', 122, 1999, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/americanbeauty.jpg'),
(24, 'The Truman Show', 103, 1998, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/thetrumanshow.jpg'),
(25, 'Orange mécanique ', 136, 1971, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/orangemecanique.jpg'),
(26, 'Usual Suspects', 106, 1995, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/usualsuspects.jpg'),
(27, 'Les Dents de la mer (Jaws)', 124, 1975, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/lesdentsdelamer.jpg'),
(28, 'La Liste de Schindler (Schindler\'s List)', 197, 1993, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/lalistedeschindler.jpg'),
(29, 'Inception', 148, 2010, 1, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/inception.jpg'),
(30, 'Le Fabuleux destin d\'Amélie Poulain', 122, 2001, 2, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula nibh dolor, ut feugiat nunc ultrices vitae. Donec cursus sagittis elit non hendrerit. Quisque vitae ornare eros, vitae scelerisque nisi. Nunc dignissim libero aliquam, dapibus justo vel, ullamcorper orci. Donec nisl magna, pellentesque dapibus blandit sed, auctor in dolor. Vivamus fringilla nibh id velit eleifend consectetur. Nulla dapibus ante diam, vitae tempor neque sollicitudin sit amet. Ut ipsum libero, auctor non felis a, gravida iaculis urna. Curabitur at condimentum est.\n\nQuisque condimentum molestie tortor, eu commodo felis feugiat in. Curabitur elementum, magna nec porttitor sagittis, elit eros rhoncus elit, vitae porttitor mauris erat sit amet felis. Sed ac massa eu neque commodo molestie non egestas neque. Pellentesque quis justo lacinia, dapibus turpis nec, lacinia risus. Phasellus maximus pharetra justo, a lobortis sem sollicitudin non. Cras tempus magna ut pharetra blandit. Quisque bibendum aliquam neque, maximus ullamcorper nisi laoreet et. Vestibulum pulvinar, ligula id fermentum euismod, sapien nisi finibus enim, pharetra vehicula enim massa at lectus. Donec congue eros feugiat turpis mollis ultricies. Sed ullamcorper libero at commodo cursus. Sed semper nulla ac augue porttitor, a ultricies felis laoreet. Proin a accumsan quam, at venenatis velit. Aliquam vel feugiat erat. Aliquam fermentum nulla ut sem suscipit maximus. ', 'images/lefabuleuxdestindameliepoulain.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `films_genres`
--

CREATE TABLE `films_genres` (
  `id_film` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `films_genres`
--

INSERT INTO `films_genres` (`id_film`, `id_genre`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 2),
(3, 3),
(4, 2),
(5, 2),
(5, 4),
(6, 5),
(6, 6),
(7, 2),
(7, 5),
(8, 2),
(8, 5),
(9, 1),
(9, 8),
(10, 5),
(10, 7),
(11, 2),
(12, 6),
(12, 7),
(13, 6),
(13, 7),
(14, 7),
(14, 13),
(15, 1),
(15, 2),
(16, 2),
(17, 5),
(17, 6),
(18, 6),
(18, 7),
(19, 2),
(19, 9),
(20, 2),
(20, 8),
(21, 10),
(22, 3),
(22, 4),
(23, 2),
(24, 6),
(24, 11),
(25, 2),
(25, 6),
(26, 1),
(26, 8),
(27, 8),
(27, 10),
(28, 2),
(29, 5),
(29, 6),
(30, 12);

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `id_genre` int(11) NOT NULL,
  `genre` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`id_genre`, `genre`) VALUES
(1, 'Crime'),
(2, 'Drame'),
(3, 'Comédie'),
(4, 'Romance'),
(5, 'Action'),
(6, 'Science-fiction'),
(7, 'Aventure'),
(8, 'Thriller'),
(9, 'Fantaisie'),
(10, 'Horreur'),
(11, 'Comédie-dramatique'),
(12, 'Comédie-romantique'),
(13, 'Animation'),
(14, 'Police');

-- --------------------------------------------------------

--
-- Structure de la table `origines`
--

CREATE TABLE `origines` (
  `id_origine` int(11) NOT NULL,
  `origine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `origines`
--

INSERT INTO `origines` (`id_origine`, `origine`) VALUES
(1, 'Etats-Unis'),
(2, 'France');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id_commentaire`),
  ADD KEY `fk_commentaire_films` (`id_film`);

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `id_origine` (`id_origine`);

--
-- Index pour la table `films_genres`
--
ALTER TABLE `films_genres`
  ADD PRIMARY KEY (`id_film`,`id_genre`),
  ADD KEY `fk_films_genres_genres` (`id_genre`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id_genre`);

--
-- Index pour la table `origines`
--
ALTER TABLE `origines`
  ADD PRIMARY KEY (`id_origine`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id_commentaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `fk_commentaire_films` FOREIGN KEY (`id_film`) REFERENCES `films` (`id_film`);

--
-- Contraintes pour la table `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `id_origine` FOREIGN KEY (`id_origine`) REFERENCES `origines` (`id_origine`);

--
-- Contraintes pour la table `films_genres`
--
ALTER TABLE `films_genres`
  ADD CONSTRAINT `fk_films_genres_films` FOREIGN KEY (`id_film`) REFERENCES `films` (`id_film`),
  ADD CONSTRAINT `fk_films_genres_genres` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`id_genre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
