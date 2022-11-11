-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 29 nov. 2021 à 15:32
-- Version du serveur :  10.3.31-MariaDB-0ubuntu0.20.04.1-log
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `p1802896`
--

-- --------------------------------------------------------

--
-- Structure de la table `ADAPTER`
--

CREATE TABLE `ADAPTER` (
  `idJ` int(11) NOT NULL,
  `idV` int(11) NOT NULL,
  `adaptation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ADAPTER`
--

INSERT INTO `ADAPTER` (`idJ`, `idV`, `adaptation`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ASSOCIER`
--

CREATE TABLE `ASSOCIER` (
  `idPlante` int(11) NOT NULL,
  `idPlante_1` int(11) NOT NULL,
  `commentaireAssociation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ASSOCIER`
--

INSERT INTO `ASSOCIER` (`idPlante`, `idPlante_1`, `commentaireAssociation`) VALUES
(1, 1, 'association null');

-- --------------------------------------------------------

--
-- Structure de la table `COUVRIR`
--

CREATE TABLE `COUVRIR` (
  `numR` int(11) NOT NULL,
  `idPlante` int(11) NOT NULL,
  `periode` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `COUVRIR`
--

INSERT INTO `COUVRIR` (`numR`, `idPlante`, `periode`) VALUES
(1, 1, 65);

-- --------------------------------------------------------

--
-- Structure de la table `ETRE_PRODUIRE`
--

CREATE TABLE `ETRE_PRODUIRE` (
  `idV` int(11) NOT NULL,
  `idS` int(11) NOT NULL,
  `idVe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ETRE_PRODUIRE`
--

INSERT INTO `ETRE_PRODUIRE` (`idV`, `idS`, `idVe`) VALUES
(1, 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `JARDIN`
--

CREATE TABLE `JARDIN` (
  `idJ` int(11) NOT NULL,
  `nomJ` varchar(255) NOT NULL,
  `surfaceJ` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `JARDIN`
--

INSERT INTO `JARDIN` (`idJ`, `nomJ`, `surfaceJ`) VALUES
(1, 'JardinSofiene', 567.5);

-- --------------------------------------------------------

--
-- Structure de la table `MENACE`
--

CREATE TABLE `MENACE` (
  `idM` int(11) NOT NULL,
  `descrM` varchar(255) NOT NULL,
  `listeSolution` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `MENACE`
--

INSERT INTO `MENACE` (`idM`, `descrM`, `listeSolution`) VALUES
(1, 'insecte', 'insecticide');

-- --------------------------------------------------------

--
-- Structure de la table `OCCUPER`
--

CREATE TABLE `OCCUPER` (
  `numR` int(11) NOT NULL,
  `idV` int(11) NOT NULL,
  `typeMiseEnPlace` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `OCCUPER`
--

INSERT INTO `OCCUPER` (`numR`, `idV`, `typeMiseEnPlace`) VALUES
(1, 1, 'en ligne');

-- --------------------------------------------------------

--
-- Structure de la table `ORNEMENT`
--

CREATE TABLE `ORNEMENT` (
  `idJ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ORNEMENT`
--

INSERT INTO `ORNEMENT` (`idJ`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `PARCELLE`
--

CREATE TABLE `PARCELLE` (
  `idP` int(11) NOT NULL,
  `dimPX` double NOT NULL,
  `dimPY` double NOT NULL,
  `coordPX` double NOT NULL,
  `coordPY` double NOT NULL,
  `idJ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `PARCELLE`
--

INSERT INTO `PARCELLE` (`idP`, `dimPX`, `dimPY`, `coordPX`, `coordPY`, `idJ`) VALUES
(1, 676, 98, 765, 8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `PLANTE`
--

CREATE TABLE `PLANTE` (
  `idPlante` int(11) NOT NULL,
  `nomP` varchar(255) NOT NULL,
  `nomLatinP` varchar(255) NOT NULL,
  `categorieP` varchar(255) NOT NULL,
  `typeP` varchar(255) NOT NULL,
  `sous_typeP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `PLANTE`
--

INSERT INTO `PLANTE` (`idPlante`, `nomP`, `nomLatinP`, `categorieP`, `typeP`, `sous_typeP`) VALUES
(1, 'Chou', 'kdijz dzdhi', 'plante racine', 'legume', 'legume vert');

-- --------------------------------------------------------

--
-- Structure de la table `POTAGER`
--

CREATE TABLE `POTAGER` (
  `idJ` int(11) NOT NULL,
  `typeSol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `POTAGER`
--

INSERT INTO `POTAGER` (`idJ`, `typeSol`) VALUES
(1, 'sol dur');

-- --------------------------------------------------------

--
-- Structure de la table `RANG`
--

CREATE TABLE `RANG` (
  `numR` int(11) NOT NULL,
  `coordRX` double NOT NULL,
  `coordRY` double NOT NULL,
  `idP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `RANG`
--

INSERT INTO `RANG` (`numR`, `coordRX`, `coordRY`, `idP`) VALUES
(1, 10, 15, 1);

-- --------------------------------------------------------

--
-- Structure de la table `RECOLTE`
--

CREATE TABLE `RECOLTE` (
  `idR` int(11) NOT NULL,
  `qualiteR` varchar(255) NOT NULL,
  `commentaireEval` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `RECOLTE`
--

INSERT INTO `RECOLTE` (`idR`, `qualiteR`, `commentaireEval`) VALUES
(1, 'bonne qualité', 'bonne évaluation');

-- --------------------------------------------------------

--
-- Structure de la table `SEMANCIER`
--

CREATE TABLE `SEMANCIER` (
  `idS` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `SEMANCIER`
--

INSERT INTO `SEMANCIER` (`idS`, `url`) VALUES
(1, 'www.lamereaizem.fr');

-- --------------------------------------------------------

--
-- Structure de la table `SUBIR`
--

CREATE TABLE `SUBIR` (
  `idPlante` int(11) NOT NULL,
  `idM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `SUBIR`
--

INSERT INTO `SUBIR` (`idPlante`, `idM`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `VARIETE`
--

CREATE TABLE `VARIETE` (
  `idV` int(11) NOT NULL,
  `nomV` varchar(255) NOT NULL,
  `amm` int(11) NOT NULL,
  `precoce` tinyint(1) NOT NULL DEFAULT 0,
  `descSemis` varchar(255) NOT NULL,
  `descPlantation` varchar(255) NOT NULL,
  `descEntretien` varchar(255) NOT NULL,
  `descRecolte` varchar(255) NOT NULL,
  `nbJourLevee` smallint(6) NOT NULL,
  `periodeMisePlace` smallint(6) NOT NULL,
  `periodeRecolte` smallint(6) NOT NULL,
  `commentaireGeneral` varchar(255) NOT NULL,
  `idR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `VARIETE`
--

INSERT INTO `VARIETE` (`idV`, `nomV`, `amm`, `precoce`, `descSemis`, `descPlantation`, `descEntretien`, `descRecolte`, `nbJourLevee`, `periodeMisePlace`, `periodeRecolte`, `commentaireGeneral`, `idR`) VALUES
(1, 'choux blanc', 56, 0, 'en ligne', 'profonde', 'régulier', 'rapide', 54, 60, 1, 'bonne variété de choux ', 1);

-- --------------------------------------------------------

--
-- Structure de la table `VERGER`
--

CREATE TABLE `VERGER` (
  `idJ` int(11) NOT NULL,
  `hauteurMax` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `VERGER`
--

INSERT INTO `VERGER` (`idJ`, `hauteurMax`) VALUES
(1, 50);

-- --------------------------------------------------------

--
-- Structure de la table `VERSION`
--

CREATE TABLE `VERSION` (
  `idVe` int(11) NOT NULL,
  `versionV` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `VERSION`
--

INSERT INTO `VERSION` (`idVe`, `versionV`) VALUES
(5, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ADAPTER`
--
ALTER TABLE `ADAPTER`
  ADD PRIMARY KEY (`idJ`,`idV`),
  ADD KEY `FK_ADAPTER_VARIETE` (`idV`);

--
-- Index pour la table `ASSOCIER`
--
ALTER TABLE `ASSOCIER`
  ADD PRIMARY KEY (`idPlante_1`,`idPlante`),
  ADD KEY `FK_ASSOCIER_PLANTE` (`idPlante`);

--
-- Index pour la table `COUVRIR`
--
ALTER TABLE `COUVRIR`
  ADD PRIMARY KEY (`numR`,`idPlante`) USING BTREE,
  ADD KEY `FK_ADAPTER_VARIETE` (`idPlante`) USING BTREE;

--
-- Index pour la table `ETRE_PRODUIRE`
--
ALTER TABLE `ETRE_PRODUIRE`
  ADD PRIMARY KEY (`idV`,`idS`,`idVe`),
  ADD KEY `FK_ETRE_PRODUIRE_SEMANCIER` (`idS`),
  ADD KEY `FK_ETRE_PRODUIRE_VERSION` (`idVe`);

--
-- Index pour la table `JARDIN`
--
ALTER TABLE `JARDIN`
  ADD PRIMARY KEY (`idJ`);

--
-- Index pour la table `MENACE`
--
ALTER TABLE `MENACE`
  ADD PRIMARY KEY (`idM`);

--
-- Index pour la table `OCCUPER`
--
ALTER TABLE `OCCUPER`
  ADD PRIMARY KEY (`numR`,`idV`),
  ADD KEY `FK__VARIETE` (`idV`);

--
-- Index pour la table `ORNEMENT`
--
ALTER TABLE `ORNEMENT`
  ADD KEY `idJ` (`idJ`);

--
-- Index pour la table `PARCELLE`
--
ALTER TABLE `PARCELLE`
  ADD PRIMARY KEY (`idP`),
  ADD KEY `FK_PARCELLE_JARDIN` (`idJ`);

--
-- Index pour la table `PLANTE`
--
ALTER TABLE `PLANTE`
  ADD PRIMARY KEY (`idPlante`);

--
-- Index pour la table `POTAGER`
--
ALTER TABLE `POTAGER`
  ADD PRIMARY KEY (`idJ`);

--
-- Index pour la table `RANG`
--
ALTER TABLE `RANG`
  ADD PRIMARY KEY (`numR`),
  ADD KEY `FK_RANG_PARCELLE` (`idP`);

--
-- Index pour la table `RECOLTE`
--
ALTER TABLE `RECOLTE`
  ADD PRIMARY KEY (`idR`);

--
-- Index pour la table `SEMANCIER`
--
ALTER TABLE `SEMANCIER`
  ADD PRIMARY KEY (`idS`);

--
-- Index pour la table `SUBIR`
--
ALTER TABLE `SUBIR`
  ADD PRIMARY KEY (`idPlante`,`idM`),
  ADD KEY `FK__MENACE` (`idM`);

--
-- Index pour la table `VARIETE`
--
ALTER TABLE `VARIETE`
  ADD PRIMARY KEY (`idV`) USING BTREE,
  ADD KEY `FK_VARIETE_RECOLTE` (`idR`);

--
-- Index pour la table `VERGER`
--
ALTER TABLE `VERGER`
  ADD PRIMARY KEY (`idJ`);

--
-- Index pour la table `VERSION`
--
ALTER TABLE `VERSION`
  ADD PRIMARY KEY (`idVe`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `JARDIN`
--
ALTER TABLE `JARDIN`
  MODIFY `idJ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `MENACE`
--
ALTER TABLE `MENACE`
  MODIFY `idM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `PLANTE`
--
ALTER TABLE `PLANTE`
  MODIFY `idPlante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `RANG`
--
ALTER TABLE `RANG`
  MODIFY `numR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `RECOLTE`
--
ALTER TABLE `RECOLTE`
  MODIFY `idR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `SEMANCIER`
--
ALTER TABLE `SEMANCIER`
  MODIFY `idS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `VARIETE`
--
ALTER TABLE `VARIETE`
  MODIFY `idV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `VERSION`
--
ALTER TABLE `VERSION`
  MODIFY `idVe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ADAPTER`
--
ALTER TABLE `ADAPTER`
  ADD CONSTRAINT `FK_ADAPTER_POTAGER` FOREIGN KEY (`idJ`) REFERENCES `POTAGER` (`idJ`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ADAPTER_VARIETE` FOREIGN KEY (`idV`) REFERENCES `VARIETE` (`idV`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `ASSOCIER`
--
ALTER TABLE `ASSOCIER`
  ADD CONSTRAINT `FK_ASSOCIER_PLANTE` FOREIGN KEY (`idPlante`) REFERENCES `PLANTE` (`idPlante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ASSOCIER_PLANTE_2` FOREIGN KEY (`idPlante_1`) REFERENCES `PLANTE` (`idPlante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `COUVRIR`
--
ALTER TABLE `COUVRIR`
  ADD CONSTRAINT `FK_COUVRIR_PLANTE` FOREIGN KEY (`idPlante`) REFERENCES `PLANTE` (`idPlante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_COUVRIR_RANG` FOREIGN KEY (`numR`) REFERENCES `RANG` (`numR`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `ETRE_PRODUIRE`
--
ALTER TABLE `ETRE_PRODUIRE`
  ADD CONSTRAINT `FK_ETRE_PRODUIRE_SEMANCIER` FOREIGN KEY (`idS`) REFERENCES `SEMANCIER` (`idS`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ETRE_PRODUIRE_VARIETE` FOREIGN KEY (`idV`) REFERENCES `VARIETE` (`idV`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ETRE_PRODUIRE_VERSION` FOREIGN KEY (`idVe`) REFERENCES `VERSION` (`idVe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `OCCUPER`
--
ALTER TABLE `OCCUPER`
  ADD CONSTRAINT `FK__RANG` FOREIGN KEY (`numR`) REFERENCES `RANG` (`numR`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__VARIETE` FOREIGN KEY (`idV`) REFERENCES `VARIETE` (`idV`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `ORNEMENT`
--
ALTER TABLE `ORNEMENT`
  ADD CONSTRAINT `FK_ORNEMENT_JARDIN` FOREIGN KEY (`idJ`) REFERENCES `JARDIN` (`idJ`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `PARCELLE`
--
ALTER TABLE `PARCELLE`
  ADD CONSTRAINT `FK_PARCELLE_JARDIN` FOREIGN KEY (`idJ`) REFERENCES `JARDIN` (`idJ`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `POTAGER`
--
ALTER TABLE `POTAGER`
  ADD CONSTRAINT `FK_POTAGER_JARDIN` FOREIGN KEY (`idJ`) REFERENCES `JARDIN` (`idJ`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `RANG`
--
ALTER TABLE `RANG`
  ADD CONSTRAINT `FK_RANG_PARCELLE` FOREIGN KEY (`idP`) REFERENCES `PARCELLE` (`idP`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `SUBIR`
--
ALTER TABLE `SUBIR`
  ADD CONSTRAINT `FK__MENACE` FOREIGN KEY (`idM`) REFERENCES `MENACE` (`idM`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__PLANTE` FOREIGN KEY (`idPlante`) REFERENCES `PLANTE` (`idPlante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `VARIETE`
--
ALTER TABLE `VARIETE`
  ADD CONSTRAINT `FK_VARIETE_RECOLTE` FOREIGN KEY (`idR`) REFERENCES `RECOLTE` (`idR`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `VERGER`
--
ALTER TABLE `VERGER`
  ADD CONSTRAINT `FK_VERGER_JARDIN` FOREIGN KEY (`idJ`) REFERENCES `JARDIN` (`idJ`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

