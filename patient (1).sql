-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 19 oct. 2019 à 19:53
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP :  7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `patient`
--

-- --------------------------------------------------------

--
-- Structure de la table `bloc`
--

CREATE TABLE `bloc` (
  `id_secteur` int(11) NOT NULL,
  `id_docteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bloc`
--

INSERT INTO `bloc` (`id_secteur`, `id_docteur`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 2),
(2, 4),
(1, 5),
(2, 5),
(2, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Structure de la table `docteur`
--

CREATE TABLE `docteur` (
  `id` int(11) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `specialite` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `docteur`
--

INSERT INTO `docteur` (`id`, `prenom`, `nom`, `adresse`, `phone`, `avatar`, `email`, `specialite`) VALUES
(1, 'awa', 'ndiaye', 'pikine rue 10', '770254923', 'image1', 'awa10@gmail.com', 'oto-rhino-laryngologue'),
(2, 'mamadou', 'kasse', 'pikine rue 10', '771253259', 'image2', 'mamadou02@gmail.com', 'medecin generaliste'),
(3, 'paul', 'mendy', 'medina rue 22', '701582654', 'image2', 'paul.mendy@gmail.com', 'Neurochirurgien'),
(4, 'moussa', 'bah', 'grand dakar', '761252623', 'image2', 'moussa.bah@gmail.com', 'Gastro-enterologue'),
(5, 'pierre', 'gomis', 'rufisque', '707821520', 'image2', 'pierre.gomis@gmail.com', 'dermatologue'),
(6, 'junior\r\n', 'mendy', 'castor', '781521620', 'image1', 'junior.mendy@gmail.com', 'gynecologue'),
(7, 'jean maurice', 'diatta', 'thies', '770212501', 'image2', 'maurice.jean@gmail.com', 'Anesthesite-reanimateur'),
(8, 'habit', 'sow', 'mbour stade', '778611582', 'image2', 'habit23@gmail.com', 'chirurgien orthopeliste et traumatologue');

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `symptone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id`, `prenom`, `nom`, `age`, `adresse`, `phone`, `email`, `symptone`) VALUES
(1, 'francisco', 'lopez', 27, 'pikine rue 10', 770124015, 'francisco.lopez@gmail.com', 'mal au ventre'),
(2, 'pierre John', 'jobb', 25, 'grand yoff', 770231524, 'pierre.jobb@gmail.com', 'peau et visage'),
(3, 'thiane', 'dieng', 10, 'matan', 770215213, 'thiane.dieng@gmail.com', 'fracture du bras'),
(4, 'binou', 'niang', 24, 'thiaroye sur mer', 781244520, 'binou12@gmail.com', 'en etat de grossesse'),
(5, 'marie jeanne', 'mendy', 25, 'keur massar', 772451252, 'marie.jeanne@gmail.com', 'fracture jambe'),
(6, 'aminata', 'diop', 30, 'podor', 701245248, 'aminata12@gmail.com', 'probleme yeux');

-- --------------------------------------------------------

--
-- Structure de la table `rv`
--

CREATE TABLE `rv` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `heure` int(11) NOT NULL,
  `id_patient` int(11) NOT NULL,
  `id_secteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `secrecteur`
--

CREATE TABLE `secrecteur` (
  `id` int(11) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `secrecteur`
--

INSERT INTO `secrecteur` (`id`, `prenom`, `nom`, `adresse`, `phone`, `email`, `avatar`, `username`, `password`) VALUES
(1, 'awa', 'cisse', 'mbour', 772312856, 'awa.cisse@gmail.com', 'image4\r\n', 'awa', '12345'),
(2, 'fatoumata', 'ndiaye', 'dakar yoff', 773451202, 'fatoumata.ndiaye@gmail.com', 'image5', 'fatou', '01234');

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

CREATE TABLE `secteur` (
  `id` int(11) NOT NULL,
  `nom_secteur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `secteur`
--

INSERT INTO `secteur` (`id`, `nom_secteur`) VALUES
(1, 'gastro'),
(2, 'dermatologue');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `idsecteur` int(11) NOT NULL,
  `idsecreteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`idsecteur`, `idsecreteur`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `traitement`
--

CREATE TABLE `traitement` (
  `id_docteur` int(11) NOT NULL,
  `id_patient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `traitement`
--

INSERT INTO `traitement` (`id_docteur`, `id_patient`) VALUES
(1, 1),
(2, 2),
(5, 3),
(5, 4),
(4, 5),
(4, 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bloc`
--
ALTER TABLE `bloc`
  ADD KEY `saisir` (`id_docteur`),
  ADD KEY `boulot` (`id_secteur`);

--
-- Index pour la table `docteur`
--
ALTER TABLE `docteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rv`
--
ALTER TABLE `rv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tout avoir` (`id_patient`),
  ADD KEY `arrive` (`id_secteur`);

--
-- Index pour la table `secrecteur`
--
ALTER TABLE `secrecteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD KEY `travail` (`idsecreteur`),
  ADD KEY `bureau` (`idsecteur`);

--
-- Index pour la table `traitement`
--
ALTER TABLE `traitement`
  ADD KEY `maladie` (`id_patient`),
  ADD KEY `consulte` (`id_docteur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `docteur`
--
ALTER TABLE `docteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `rv`
--
ALTER TABLE `rv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `secrecteur`
--
ALTER TABLE `secrecteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `secteur`
--
ALTER TABLE `secteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bloc`
--
ALTER TABLE `bloc`
  ADD CONSTRAINT `boulot` FOREIGN KEY (`id_secteur`) REFERENCES `secteur` (`id`),
  ADD CONSTRAINT `saisir` FOREIGN KEY (`id_docteur`) REFERENCES `docteur` (`id`);

--
-- Contraintes pour la table `rv`
--
ALTER TABLE `rv`
  ADD CONSTRAINT `arrive` FOREIGN KEY (`id_secteur`) REFERENCES `secteur` (`id`),
  ADD CONSTRAINT `tout avoir` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `bureau` FOREIGN KEY (`idsecteur`) REFERENCES `secteur` (`id`),
  ADD CONSTRAINT `travail` FOREIGN KEY (`idsecreteur`) REFERENCES `secrecteur` (`id`);

--
-- Contraintes pour la table `traitement`
--
ALTER TABLE `traitement`
  ADD CONSTRAINT `consulte` FOREIGN KEY (`id_docteur`) REFERENCES `docteur` (`id`),
  ADD CONSTRAINT `maladie` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
