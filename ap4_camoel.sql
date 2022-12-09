-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 09 déc. 2022 à 16:59
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ap4_camoel`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `ID_COMPTE` int(2) NOT NULL,
  `ESTDIRIGEANT` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `allergene`
--

CREATE TABLE `allergene` (
  `ID_ALLERGENE` int(2) NOT NULL,
  `LABEL_ALLERGENE` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE `appartenir` (
  `ID_PLAT` int(2) NOT NULL,
  `ID_CATEGORIE` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `ID_CATEGORIE` int(2) NOT NULL,
  `LABEL_CATEGORIE` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID_COMPTE` int(2) NOT NULL,
  `EMAIL` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `ID_COMMANDE` int(2) NOT NULL,
  `ID_COMPTE` int(2) NOT NULL,
  `FACTURE` bit(1) NOT NULL,
  `DATE_COMMANDE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `commander`
--

CREATE TABLE `commander` (
  `ID_COMMANDE` int(2) NOT NULL,
  `ID_PLAT` int(2) NOT NULL,
  `QUANTITE` smallint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `ID_COMPTE` int(2) NOT NULL,
  `NOM` varchar(128) NOT NULL,
  `PRENOM` varchar(128) NOT NULL,
  `LOGIN` varchar(128) NOT NULL,
  `MOT_DE_PASSE` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`ID_COMPTE`, `NOM`, `PRENOM`, `LOGIN`, `MOT_DE_PASSE`) VALUES
(1, 'Willy', 'Howell', 'witt1ng', '*D972D3135D8EFE84FB5CFACDA522C8366FAFF092'),
(2, 'Cletus', 'Windler', 'shaniya68', '*C224573D04EDCD8D340EFDF39FC174F5DA938C81'),
(3, 'Benton', 'Senger', 's.benton', '*6E76FB49C2C3DF4128CF16B32B5051CBA5B4B67F'),
(4, 'Rowland', 'Franecki', 'FrafraRowd26', '*52048352ABCED6AFDBB152CFFCB2B732B9F6AB27'),
(5, 'Rodolfo', 'Ryan', 'price.guiseppe', '*A9769D385D40B76E7A53A9954EACB62CA70DAA96'),
(6, 'Arlene', 'O\'Kon', 'vwill', '*BA4585F46D0AA1F270A08B9B9A46B1E5DDDE92B1'),
(7, 'Myra', 'Gottlieb', 'miller.jesus', '*4310F1220E0F67561EE5FEF7D9EAD5E4020163A2'),
(8, 'Constance', 'Russel', 'dianna67', '*5E81F1F416C5869A13B0E988BC6872DE8B525CDB'),
(9, 'Ona', 'Satterfield', 'jarrell21', '*8CDD9F9FDE56F8B4B4A70AC3738A1A0E067FD581'),
(10, 'Addie', 'Corwin', 'reymundo40', '*40AFBEC6A28186AC5FD190B948115ACDC58773D2'),
(11, 'Alejandra', 'O\'Kon', 'may.bosco', '*C2A6A8451B12C7A05326FC9F18F6F06D790C91B1'),
(12, 'Brittany', 'Prosacco', 'ritchie.antwon', '*4AEB382C2C9756F9A4B923E983985E5C9F7EF8D0'),
(13, 'Emmie', 'Champlin', 'guadalupe39', '*F24396D1F3E394DEA7897426147796A0F02ED91E'),
(14, 'Roxane', 'Hessel', 'cassie55', '*176F4FF33EEB92E13182A8E672F3D55FA2ED5908'),
(15, 'Reanna', 'Wiza', 'dietrich.arely', '*375DC16530C61D7879D53DEC1D1EA4203650EE88'),
(16, 'Zakary', 'Toy', 'laila.gleichner', '*7E79ADCF1C4EE2C460FC59A1849AD583262AF5F5'),
(17, 'Rowland', 'Dietrich', 'vicente.vonrueden', '*1E1F1063DA1519707FD57F562A155F9BB25D6379'),
(18, 'Kaley', 'Abernathy', 'oswald24', '*578C7766F1EBAC4E002823706203F7768CAACCF7'),
(19, 'Leonie', 'Greenholt', 'Jovany77', '*7C6B3B2D12B7CE9F7CCC6604B44A17CB854371E1'),
(20, 'Brycen', 'Willms', 'thompson.jovany', '*109AB60C881F884FF575FDE9C0DA9AFC58587C09'),
(21, 'Brebion', 'Valentin', 'quicheMann', '*8050DB5721E33850997B23DB9B9668558B0D4A64'),
(22, 'Bodier', 'Margot', 'trex@jesuismechant', '*06BCA7CE00CE63C41BA4975D76DF6A7C4451BC80'),
(23, 'Courapie', 'Brieuc', 'Boyard.xxs', '*0A36AE2D798AD67265390DB9C901553A3936B3C0');

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

CREATE TABLE `contenir` (
  `ID_PLAT` int(2) NOT NULL,
  `ID_ALLERGENE` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `emporter`
--

CREATE TABLE `emporter` (
  `ID_COMMANDE` int(2) NOT NULL,
  `DATE_RETRAIT` datetime NOT NULL,
  `COMMENTAIRE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `place`
--

CREATE TABLE `place` (
  `ID_COMMANDE` int(2) NOT NULL,
  `NUM_TABLE` int(2) NOT NULL,
  `ID_COMPTE` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

CREATE TABLE `plat` (
  `ID_PLAT` int(2) NOT NULL,
  `TITRE_PLAT` varchar(128) NOT NULL,
  `DESCRIPTION_PLAT` varchar(255) NOT NULL,
  `PRIX_HT` bigint(4) NOT NULL,
  `STOCK_PLAT` bigint(4) NOT NULL,
  `ESTPLATDUJOUR` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `plat`
--

INSERT INTO `plat` (`ID_PLAT`, `TITRE_PLAT`, `DESCRIPTION_PLAT`, `PRIX_HT`, `STOCK_PLAT`, `ESTPLATDUJOUR`) VALUES
(1, 'Oeuf à la coque', 'Oeuf à la coque accompagné de tranches de pain, tous deux issus de l\'agriculture responsable', 7, 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `reapprovisionnement`
--

CREATE TABLE `reapprovisionnement` (
  `ID_REAPPRO` int(2) NOT NULL,
  `ID_PLAT` int(2) NOT NULL,
  `QUANTITE_REAPPRO` int(2) NOT NULL,
  `DATE_REAPPRO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `serveur`
--

CREATE TABLE `serveur` (
  `ID_COMPTE` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tables`
--

CREATE TABLE `tables` (
  `NUM_TABLE` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`ID_COMPTE`);

--
-- Index pour la table `allergene`
--
ALTER TABLE `allergene`
  ADD PRIMARY KEY (`ID_ALLERGENE`);

--
-- Index pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD PRIMARY KEY (`ID_PLAT`,`ID_CATEGORIE`),
  ADD KEY `I_FK_APPARTENIR_PLAT` (`ID_PLAT`),
  ADD KEY `I_FK_APPARTENIR_CATEGORIE` (`ID_CATEGORIE`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`ID_CATEGORIE`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_COMPTE`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`ID_COMMANDE`),
  ADD KEY `I_FK_COMMANDE_CLIENT` (`ID_COMPTE`);

--
-- Index pour la table `commander`
--
ALTER TABLE `commander`
  ADD PRIMARY KEY (`ID_COMMANDE`,`ID_PLAT`),
  ADD KEY `I_FK_COMMANDER_COMMANDE` (`ID_COMMANDE`),
  ADD KEY `I_FK_COMMANDER_PLAT` (`ID_PLAT`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`ID_COMPTE`);

--
-- Index pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD PRIMARY KEY (`ID_PLAT`,`ID_ALLERGENE`),
  ADD KEY `I_FK_CONTENIR_PLAT` (`ID_PLAT`),
  ADD KEY `I_FK_CONTENIR_ALLERGENE` (`ID_ALLERGENE`);

--
-- Index pour la table `emporter`
--
ALTER TABLE `emporter`
  ADD PRIMARY KEY (`ID_COMMANDE`);

--
-- Index pour la table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`ID_COMMANDE`),
  ADD KEY `I_FK_PLACE_TABLES` (`NUM_TABLE`),
  ADD KEY `I_FK_PLACE_SERVEUR` (`ID_COMPTE`);

--
-- Index pour la table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`ID_PLAT`);

--
-- Index pour la table `reapprovisionnement`
--
ALTER TABLE `reapprovisionnement`
  ADD PRIMARY KEY (`ID_REAPPRO`),
  ADD KEY `I_FK_REAPPROVISIONNEMENT_PLAT` (`ID_PLAT`);

--
-- Index pour la table `serveur`
--
ALTER TABLE `serveur`
  ADD PRIMARY KEY (`ID_COMPTE`);

--
-- Index pour la table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`NUM_TABLE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `allergene`
--
ALTER TABLE `allergene`
  MODIFY `ID_ALLERGENE` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `ID_CATEGORIE` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `ID_COMMANDE` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `ID_COMPTE` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `plat`
--
ALTER TABLE `plat`
  MODIFY `ID_PLAT` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `reapprovisionnement`
--
ALTER TABLE `reapprovisionnement`
  MODIFY `ID_REAPPRO` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tables`
--
ALTER TABLE `tables`
  MODIFY `NUM_TABLE` int(2) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD CONSTRAINT `FK_ADMINISTRATEUR_COMPTE` FOREIGN KEY (`ID_COMPTE`) REFERENCES `compte` (`ID_COMPTE`);

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `FK_APPARTENIR_CATEGORIE` FOREIGN KEY (`ID_CATEGORIE`) REFERENCES `categorie` (`ID_CATEGORIE`),
  ADD CONSTRAINT `FK_APPARTENIR_PLAT` FOREIGN KEY (`ID_PLAT`) REFERENCES `plat` (`ID_PLAT`);

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK_CLIENT_COMPTE` FOREIGN KEY (`ID_COMPTE`) REFERENCES `compte` (`ID_COMPTE`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_COMMANDE_CLIENT` FOREIGN KEY (`ID_COMPTE`) REFERENCES `client` (`ID_COMPTE`);

--
-- Contraintes pour la table `commander`
--
ALTER TABLE `commander`
  ADD CONSTRAINT `FK_COMMANDER_COMMANDE` FOREIGN KEY (`ID_COMMANDE`) REFERENCES `commande` (`ID_COMMANDE`),
  ADD CONSTRAINT `FK_COMMANDER_PLAT` FOREIGN KEY (`ID_PLAT`) REFERENCES `plat` (`ID_PLAT`);

--
-- Contraintes pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD CONSTRAINT `FK_CONTENIR_ALLERGENE` FOREIGN KEY (`ID_ALLERGENE`) REFERENCES `allergene` (`ID_ALLERGENE`),
  ADD CONSTRAINT `FK_CONTENIR_PLAT` FOREIGN KEY (`ID_PLAT`) REFERENCES `plat` (`ID_PLAT`);

--
-- Contraintes pour la table `emporter`
--
ALTER TABLE `emporter`
  ADD CONSTRAINT `FK_EMPORTER_COMMANDE` FOREIGN KEY (`ID_COMMANDE`) REFERENCES `commande` (`ID_COMMANDE`);

--
-- Contraintes pour la table `place`
--
ALTER TABLE `place`
  ADD CONSTRAINT `FK_PLACE_COMMANDE` FOREIGN KEY (`ID_COMMANDE`) REFERENCES `commande` (`ID_COMMANDE`),
  ADD CONSTRAINT `FK_PLACE_SERVEUR` FOREIGN KEY (`ID_COMPTE`) REFERENCES `serveur` (`ID_COMPTE`),
  ADD CONSTRAINT `FK_PLACE_TABLES` FOREIGN KEY (`NUM_TABLE`) REFERENCES `tables` (`NUM_TABLE`);

--
-- Contraintes pour la table `reapprovisionnement`
--
ALTER TABLE `reapprovisionnement`
  ADD CONSTRAINT `FK_REAPPROVISIONNEMENT_PLAT` FOREIGN KEY (`ID_PLAT`) REFERENCES `plat` (`ID_PLAT`);

--
-- Contraintes pour la table `serveur`
--
ALTER TABLE `serveur`
  ADD CONSTRAINT `FK_SERVEUR_COMPTE` FOREIGN KEY (`ID_COMPTE`) REFERENCES `compte` (`ID_COMPTE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
