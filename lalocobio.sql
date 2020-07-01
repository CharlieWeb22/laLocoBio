-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 01 juil. 2020 à 19:57
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `lalocobio`
--

-- --------------------------------------------------------

--
-- Structure de la table `article_onvaplusloin`
--

DROP TABLE IF EXISTS `article_onvaplusloin`;
CREATE TABLE IF NOT EXISTS `article_onvaplusloin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapeau` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_onvaplusloin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_692776FA989D9B62` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_onvaplusloin`
--

INSERT INTO `article_onvaplusloin` (`id`, `titre`, `chapeau`, `image_onvaplusloin`, `slug`, `contenu`, `updated_at`, `auteur`, `created_at`, `is_published`) VALUES
(1, 'Santé et zéro déchet : quel avenir pour le réutilisable en temps de crise?', 'Une série de blogues incluant conseils, outils et réflexions', 'img20.jpg', 'sante-et-zero-dechet-quel-avenir-pour-le-reutilisable-en-temps-de-crise', '<p>Ces derni&egrave;res semaines, la pand&eacute;mie de coronavirus a suscit&eacute; de nombreux questionnements, notamment sur la fa&ccedil;on de continuer d&rsquo;&eacute;viter les emballages jetables, d&rsquo;encourager le mod&egrave;le du r&eacute;utilisable et de privil&eacute;gier le vrac et la consigne tout en &eacute;tant attentif aux questions de sant&eacute; dans un contexte de crise sanitaire. Nous ne sommes pas expert.e.s en mati&egrave;res de sant&eacute;, mais nous pouvons offrir quelques conseils, outils et r&eacute;flexions sur la fa&ccedil;on de traverser cette p&eacute;riode difficile, tout en gardant &agrave; l&rsquo;esprit l&rsquo;&eacute;tat de notre plan&egrave;te et de ses oc&eacute;ans et les probl&egrave;mes de sant&eacute; publique qui pourraient surgir &agrave; l&rsquo;avenir si nous continuons notre trajectoire actuelle.&nbsp;</p>\r\n\r\n<p>Un avenir sans plastique jetable est souhaitable. La prise de conscience entourant la crise de pollution plastique a pouss&eacute; de nombreuses personnes &agrave; r&eacute;duire leur consommation de produits jetables, forc&eacute; les gouvernements &agrave; l&eacute;gif&eacute;rer et les grands fabricants &agrave; repenser leur mod&egrave;le. Nous avons collectivement fait des progr&egrave;s impressionnants. Et maintenant? Comment continuer &agrave; &eacute;viter le plastique dans notre vie quotidienne, &agrave; responsabiliser les pollueurs et &agrave; emp&ecirc;cher un recul alors que nous avons d&eacute;j&agrave; commenc&eacute; &agrave; amorcer de grands changements? C&rsquo;est l&agrave; toute la question.</p>\r\n\r\n<p>&nbsp;</p>', '2020-05-30 16:18:55', 'Sarah King', '0000-00-00 00:00:00', 1),
(2, 'nhbjvgfc', 'hjgfcdxfcvgh', 'img23.jpg', 'nkjnhjgf', '<p>ncdcjsnvfkjds</p>', '2020-05-30 16:55:47', 'jkoh', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `article_rdvdumois`
--

DROP TABLE IF EXISTS `article_rdvdumois`;
CREATE TABLE IF NOT EXISTS `article_rdvdumois` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapeau` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_rdvdumois` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6CD395D1989D9B62` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_rdvdumois`
--

INSERT INTO `article_rdvdumois` (`id`, `titre`, `chapeau`, `image_rdvdumois`, `slug`, `contenu`, `updated_at`, `auteur`, `is_published`, `created_at`) VALUES
(1, 'Greenpeace Afrique au Ministre sénégalais de la pêche, Mr. Alioune Ndoye', 'Dakar, Sénégal, 23 avril 2020. Le Ministère de la Pêche et de l’Economie Maritime du Sénégal a demandé au Comité consultatif son avis pour l’attribution des licences de pêche à 54 navires d’origine chinoise et turque [1], dont certains sont impliqués dans la pêche INN dénoncée par Greenpeace [2].', 'img15.jpg', 'france', '<p>En attendant que les cons&eacute;quences sociales et &eacute;conomiques d&eacute;vastatrices du COVID-9 se manifestent,[3]. le S&eacute;n&eacute;gal et d&rsquo;autres pays d&rsquo;Afrique de l&rsquo;Ouest doivent r&eacute;server leurs stocks de poissons pour la subsistance de leur population. Toute autorisation de nouveaux navires de p&ecirc;che contribuerait &aacute; d&eacute;cimer les stocks et pourrait exposer des millions de personnes &aacute; l&rsquo;ins&eacute;curit&eacute; alimentaire croissante &raquo;, d&eacute;clare Dr. Ibrahima Ciss&eacute;, Responsable de la Campagne Oc&eacute;an &agrave; Greenpeace Afrique. &laquo; Les prix du poisson s&rsquo;envolent et les stocks de poisson sont dans un &eacute;tat d&rsquo;&eacute;puisement irr&eacute;versible, dans un contexte de lutte contre une pand&eacute;mie mondiale, nous devrions nous arr&ecirc;ter pour r&eacute;&eacute;crire les r&egrave;gles de notre &eacute;conomie et red&eacute;finir nos relations avec la nature &raquo;, ajoute le Dr Ciss&eacute;.</p>\r\n\r\n<p>Le processus de demande de licence de p&ecirc;che ajoute une pression sur les p&ecirc;cheurs, les femmes transformatrices de poisson et toute une &eacute;conomie artisanale qui lutte d&eacute;j&agrave; pour concurrencer les grandes entreprises de p&ecirc;che et de farine et d&rsquo;huile de poisson, dont les navires ont doubl&eacute; leurs op&eacute;rations dans les eaux s&eacute;n&eacute;galaises depuis 2012[4]. En outre, ces derni&egrave;res semaines, les communaut&eacute;s ont &eacute;t&eacute; confront&eacute;es &agrave; des difficult&eacute;s encore plus grandes, avec les restrictions d&rsquo;acc&egrave;s aux zones maritimes impos&eacute;es par les mesures de confinement dues au COVID-19.</p>\r\n\r\n<p>&laquo; La mauvaise gestion, la p&ecirc;che ill&eacute;gale, non d&eacute;clar&eacute;e et non r&eacute;glement&eacute;e, et l&rsquo;expansion de l&rsquo;industrie de la farine et de l&rsquo;huile de poisson entra&icirc;nent la pauvret&eacute;, la migration clandestine et la disparition des p&ecirc;cheurs en mer. La gestion des p&ecirc;ches n&eacute;cessite un minimum de coh&eacute;rence, la recherche d&rsquo;autorisations de p&ecirc;che dans les pays voisins pour les p&ecirc;cheurs artisanaux est contradictoire avec l&rsquo;octroi de licences &agrave; des navires &eacute;trangers pour les m&ecirc;mes ressources. Le ministre de la p&ecirc;che, Mr. Alioune Ndoye, doit respecter ses engagements internationaux et nationaux [4] et suivre les recommandations des scientifiques afin de donner la priorit&eacute; d&rsquo;acc&egrave;s aux ressources aux communaut&eacute;s c&ocirc;ti&egrave;res et donner une chance &aacute; la restauration des ressources &raquo;, a conclu le Dr. Ciss&eacute;.</p>\r\n\r\n<p>Depuis 15 ans, Greenpeace Afrique fait campagne avec la soci&eacute;t&eacute; civile et d&rsquo;autres organisations pour mettre fin &agrave; des d&eacute;cennies de surexploitation des stocks de poissons en Afrique de l&rsquo;Ouest et de politiques inad&eacute;quates. L&rsquo;ann&eacute;e derni&egrave;re, Greenpeace Afrique a &eacute;galement lanc&eacute; une campagne pour mettre fin &agrave; l&rsquo;expansion des usines de farine et d&rsquo;huile de poisson qui ne sont pas durables sur les plans environnemental, &eacute;conomique et social au S&eacute;n&eacute;gal, en Gambie et en Mauritanie[6].</p>', '2020-06-08 19:31:03', 'France', 0, '0000-00-00 00:00:00'),
(2, 'Interdiction des sachets d’eau au Sénégal: « Une étape positive vers la rupture avec les plastiques à usage unique »', '20 avril 2020, Dakar Greenpeace Afrique salue la mise en œuvre de l’interdiction du Sénégal sur les sachets d’eau, comme un pas dans la bonne direction pour lutter contre la crise de la pollution par les plastiques.', 'img18.jpg', 'interdiction-des-sachets-deau-au-senegal-une-etape-positive-vers-la-rupture-avec-les-plastiques-a-usage-unique', '<p>&nbsp;Il est encourageant de constater que, malgr&eacute; la pand&eacute;mie actuelle de Covid-19, des progr&egrave;s dans le cadre de la r&eacute;duction des plastiques &agrave; usage unique sont observ&eacute;s au S&eacute;n&eacute;gal, m&ecirc;me s&rsquo;il faut reconna&icirc;tre que des limitations notoires en termes de mise en &oelig;uvre int&eacute;grale de l&rsquo;interdiction sont not&eacute;es suite&nbsp; &agrave; la d&eacute;claration du samedi 18 Avril faite par le ministre de l&rsquo;Environnement et du d&eacute;veloppement durable. L&rsquo;interdiction des plastiques &agrave; usage unique nous incite &agrave; repenser nos villes, nos communaut&eacute;s et nos oc&eacute;ans sans plastique. C&rsquo;est la raison pour laquelle, le gouvernement devrait travailler avec les fabricants et les d&eacute;taillants de l&rsquo;industrie du plastique pour cr&eacute;er des alternatives durables et progressivement &eacute;liminer les plastiques &agrave; usage unique &raquo;, a d&eacute;clar&eacute; Awa Traor&eacute;, charg&eacute;e de campagne pour les oc&eacute;ans chez Greenpeace Afrique.</p>\r\n\r\n<p>Greenpeace Afrique, qui m&egrave;ne une campagne au S&eacute;n&eacute;gal contre les plastiques &agrave; usage unique, rappelle toutefois la n&eacute;cessit&eacute; d&rsquo;&eacute;tendre le champ d&rsquo;application de la loi de 2015 contre les sachets plastiques de faible micronnage vers une interdiction compl&egrave;te de tous les plastiques &agrave; usage unique.&nbsp;</p>\r\n\r\n<p>Toutefois, il est rassurant de noter qu&rsquo;&agrave; la suite de la d&eacute;cision de f&eacute;vrier du ministre s&eacute;n&eacute;galais de l&rsquo;Environnement et du D&eacute;veloppement durable, Abdou Karim Sall, d&rsquo;interdire les sachets d&rsquo;eau et gobelets en plastique, une interdiction qui sera appliqu&eacute;e partiellement &agrave; partir du 20 Avril, 15 ministres de la protection de l&rsquo;environnement de la CEDEAO (Communaut&eacute; &eacute;conomique des &Eacute;tats de l&rsquo;Afrique de l&rsquo;Ouest) ont &eacute;galement convenu d&rsquo;interdire l&rsquo;importation, la production et la commercialisation d&rsquo;emballages en plastique dans la r&eacute;gion d&rsquo;ici 2025.</p>', '2020-06-24 09:45:56', 'Tal Harri', 1, '0000-00-00 00:00:00'),
(5, 'Greenpeace Afrique au Ministre sénégalais de la pêche, Mr. Alioune Ndoye', 'juillet à Aout puis septembre', 'ecodair new.jpg', 'greenpeace-afrique-au-ministre-senegalais-de-la-peche-mr-alioune-ndoye', '<p>jjjjjjjjjjjjjjjjjjjjjjjjjj</p>\r\n\r\n<p>jjjjjjjjjjjjjjjjjjjjjjjjjj</p>\r\n\r\n<p>jjjjjjjjjjjjjjjjjjjjjjjjjj</p>', '2020-06-24 09:45:56', 'France Journée', 1, '2020-05-29 15:45:20');

-- --------------------------------------------------------

--
-- Structure de la table `horaires`
--

DROP TABLE IF EXISTS `horaires`;
CREATE TABLE IF NOT EXISTS `horaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `horaires`
--

INSERT INTO `horaires` (`id`, `contenu`, `is_published`) VALUES
(1, '<p>Lundi,&nbsp;Mercredi,&nbsp;Jeudi,&nbsp;Vendredi&nbsp;&amp;&nbsp;Samedi</p>\r\n\r\n<p>De&nbsp;9h&nbsp;&agrave;&nbsp;12h30&nbsp;et&nbsp;de&nbsp;15h&nbsp;&agrave;&nbsp;19h</p>\r\n\r\n<p><strong>Ferm&eacute;&nbsp;le&nbsp;Mardi&nbsp;et&nbsp;le&nbsp;Dimanche</strong></p>', 1),
(2, '<p><span style=\"font-family:Lucida Sans Unicode,Lucida Grande,sans-serif\">La boutique a ferm&eacute; ses portes pour le moment en raison des probl&egrave;mes sanitaires que nous rencontrons avec la crise du COVID-19.</span></p>\r\n\r\n<p><span style=\"font-family:Lucida Sans Unicode,Lucida Grande,sans-serif\">Merci de votre compr&eacute;hension.</span></p>', 1),
(3, '<p>Nous serions Ravis de vous voir ce jeudi soir, car nous proposons un verre de Sangria chaud &agrave; toute personne passant les portes de notre magasin</p>\r\n\r\n<p style=\"text-align:right\">L&#39;&eacute;quipe De La Loco Bio</p>', 0);

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200520155245', '2020-05-20 15:53:34'),
('20200522165458', '2020-05-22 16:55:07'),
('20200522170251', '2020-05-22 17:02:58'),
('20200522173557', '2020-05-22 17:36:02'),
('20200523142057', '2020-05-23 14:21:07'),
('20200523161454', '2020-05-23 16:15:05'),
('20200523170209', '2020-05-23 17:02:28'),
('20200523171826', '2020-05-23 17:18:35'),
('20200525111551', '2020-05-25 11:16:04'),
('20200526154058', '2020-05-26 15:41:13'),
('20200526170010', '2020-05-26 17:00:21'),
('20200527124137', '2020-05-27 12:42:09'),
('20200529115757', '2020-05-29 11:59:24'),
('20200529124029', '2020-05-29 12:40:39'),
('20200529130052', '2020-05-29 13:01:02'),
('20200529134151', '2020-05-29 13:42:02'),
('20200529140422', '2020-05-29 14:04:37'),
('20200529140606', '2020-05-29 14:06:12'),
('20200530140105', '2020-05-30 14:01:18'),
('20200601144216', '2020-06-01 14:42:30');

-- --------------------------------------------------------

--
-- Structure de la table `producteur`
--

DROP TABLE IF EXISTS `producteur`;
CREATE TABLE IF NOT EXISTS `producteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_producteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `producteur`
--

INSERT INTO `producteur` (`id`, `nom`, `activite`, `description`, `adresse`, `image_producteur`, `created_at`, `is_published`) VALUES
(5, 'La vie du', 'fournisseurs de pineau et de cognac', NULL, 'chez le roi, Chalais', 'lq18740690c__fel398_tech_cond_kiwi_couv_lead.jpg', '2015-01-01 00:00:00', 1),
(6, 'Jean Marie', 'Fournisseur de légumes', 'fournisseur de betteraves/ concombre/carottes et pommes', 'Yviers, 16', 'CM2.png', '2020-06-01 15:06:52', 1);

-- --------------------------------------------------------

--
-- Structure de la table `producteur_direct`
--

DROP TABLE IF EXISTS `producteur_direct`;
CREATE TABLE IF NOT EXISTS `producteur_direct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_producteur_direct` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `producteur_direct`
--

INSERT INTO `producteur_direct` (`id`, `nom`, `activite`, `description`, `adresse`, `image_producteur_direct`, `updated_at`, `created_at`, `is_published`) VALUES
(2, 'Leslines', 'Produits bio frais', NULL, 'Allemagne', 'unnamed.jpg', '2020-05-29 13:59:18', '2015-07-01 00:00:00', 1),
(3, 'Groot', 'vfrsfs', 'vhjj', 'Le Basque', 'images.jpg', '2020-06-01 15:21:00', '2020-06-01 15:15:45', 1);

-- --------------------------------------------------------

--
-- Structure de la table `producteur_region`
--

DROP TABLE IF EXISTS `producteur_region`;
CREATE TABLE IF NOT EXISTS `producteur_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_producteur_region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `producteur_region`
--

INSERT INTO `producteur_region` (`id`, `nom`, `activite`, `description`, `adresse`, `image_producteur_region`, `updated_at`, `created_at`, `is_published`) VALUES
(2, 'Les frères', 'Productions de fromages de vaches, tomes et oeufs de poules fermiers', NULL, 'Yviers, Rue du marechale ferand', 'csm_Filiere-fruits-legumes_3d6401abe3.jpg', '2020-05-29 14:00:18', '2015-01-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_produit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `prix` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poids` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `origine`, `reference`, `image_produit`, `description`, `updated_at`, `created_at`, `prix`, `poids`, `is_published`) VALUES
(2, 'Riz Blanc', 'Camargue, France', 'PO98JIKF54', 'Chrysanthemum.jpg', 'Riz provenant d\'un producteur direct', '2020-06-05 12:33:42', '2015-01-01 00:00:00', '5,5€', '5kg et 10kg', 0),
(3, 'Avoine', 'Haute-Savoie', 'PLKMOL90KOL9', 'Desert.jpg', 'De l\'avoine en vrac', '2020-06-04 12:53:28', '2015-01-01 00:00:00', '5,5€ les 5kg', '5kg, 10kg et 25kg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `nom`, `prenom`) VALUES
(1, 'charlotte.grootburgers@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$TWdrakl4Mk1pVWo4M0hiVQ$ulkNasFh4MriDNuoekhj9b2l4VVIEvYaZqs+ozZ+dWA', 'Groot', 'Charlotte'),
(2, 'remy@gmail.com', '[\"ROLE_REDAC\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZVRmYllvT1ZLTFZNYkRRQw$kFi+iYBRrXvHGAHOHPYuRL/txu22pll31lI4plkrhXw', 'feno', 'remy'),
(5, 'Prince@gmail.com', '[\"ROLE_REDAC\"]', '$argon2id$v=19$m=65536,t=4,p=1$bkRwUlYyRjZHWEh0aVB4UQ$D9x+O+SDSuUoDIt1XmcJjLkCyq2CIv/0C41JkpxKStU', 'Prince', 'Jean');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
