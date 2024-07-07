-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour film
CREATE DATABASE IF NOT EXISTS `film` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `film`;

-- Listage de la structure de table film. film
CREATE TABLE IF NOT EXISTS `film` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) DEFAULT NULL,
  `desc_film` text,
  `poster` varchar(255) DEFAULT NULL,
  `categoy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table film.film : ~50 rows (environ)
INSERT INTO `film` (`id`, `titre`, `desc_film`, `poster`, `categoy`) VALUES
	(1, 'The Shawshank Redemption', 'aliqua. magna consectetur do incididunt tempor sit sed amet, consectetur aliqua. magna magna dolor dolor do sit incididunt sit aliqua. aliqua. consectetur sit eiusmod dolor magna Lorem dolor Lorem tempor amet, et', 'pochette_(1).jpg', 'horror'),
	(2, 'The Godfather', 'sed adipiscing labore adipiscing magna elit, ipsum consectetur sed et adipiscing consectetur elit, dolore ut incididunt sed tempor Lorem ipsum consectetur ut dolor', 'pochette_(2).jpg', 'horror'),
	(3, 'The Dark Knight', 'dolor sed magna aliqua. Lorem amet, consectetur sed dolore labore amet, amet, dolor magna consectetur consectetur sed sit dolore dolor amet, dolore dolor magna consectetur amet, eiusmod ut ut do', 'pochette_(3).jpg', 'fantasy'),
	(4, 'Pulp Fiction', 'consectetur sit dolore aliqua. amet, ipsum et Lorem ut dolor ut elit, magna sed Lorem sed eiusmod Lorem eiusmod sed consectetur', 'pochette_(4).jpg', 'action'),
	(5, 'Forrest Gump', 'aliqua. ipsum do amet, dolore dolor eiusmod labore adipiscing do incididunt ipsum consectetur ut ipsum ipsum eiusmod labore do consectetur dolor et amet, dolor aliqua. dolore elit, ipsum Lorem ut do adipiscing ut labore dolore incididunt dolor aliqua. do incididunt sed eiusmod aliqua. tempor magna consectetur', 'pochette_(5).jpg', 'horror'),
	(6, 'Inception', 'adipiscing do labore et Lorem adipiscing labore amet, sit et et et labore ipsum amet, Lorem incididunt dolor do magna ut Lorem aliqua. ipsum consectetur do consectetur do amet, consectetur dolore do ut sed amet, eiusmod ut ipsum eiusmod magna do do eiusmod ut incididunt do ipsum', 'pochette_(6).jpg', 'horror'),
	(7, 'Fight Club', 'tempor tempor dolore tempor ut consectetur dolor et consectetur consectetur adipiscing aliqua. ut elit, do incididunt sit ut ut Lorem tempor consectetur labore ipsum et incididunt amet, magna dolor adipiscing adipiscing labore elit, sit ut ut aliqua. ut elit, dolore adipiscing labore eiusmod consectetur dolor labore Lorem sed eiusmod', 'pochette_(7).jpg', 'action'),
	(8, 'The Matrix', 'consectetur labore amet, tempor ut dolore et dolore et do adipiscing adipiscing amet, sit et labore Lorem elit, aliqua. dolor do dolore elit, tempor dolore', 'pochette_(8).jpg', 'action'),
	(9, 'Goodfellas', 'elit, magna sed amet, amet, eiusmod dolor eiusmod et amet, tempor dolor tempor sit dolor incididunt adipiscing incididunt Lorem et sed ipsum amet, aliqua. dolor sit amet, labore et consectetur et dolore amet, ipsum ut dolor dolore labore sit elit, incididunt magna', 'pochette_(9).jpg', 'humor'),
	(10, 'The Lord of the Rings: The Return of the King', 'sit dolore tempor ipsum aliqua. ipsum adipiscing sed dolor dolor sed incididunt et dolore et amet, amet, ipsum ut sit elit, labore adipiscing sed elit, labore labore incididunt Lorem magna incididunt', 'pochette_(10).jpg', 'humor'),
	(11, 'Star Wars: Episode V - The Empire Strikes Back', 'Lorem magna incididunt incididunt et adipiscing incididunt labore ut eiusmod labore do do Lorem magna adipiscing magna dolore dolor ut incididunt aliqua. labore aliqua. sit', 'pochette_(11).jpg', 'horror'),
	(12, 'The Silence of the Lambs', 'dolore amet, dolore ipsum adipiscing dolore ipsum Lorem consectetur adipiscing elit, ipsum magna sed Lorem adipiscing ut labore magna labore Lorem magna incididunt do sit magna ipsum sed amet, eiusmod Lorem sed ipsum elit, amet, tempor aliqua. magna dolore elit, sit sed tempor amet, do', 'pochette_(12).jpg', 'horror'),
	(13, 'Se7en', 'Lorem dolore sit amet, do tempor Lorem amet, amet, incididunt ipsum dolore magna adipiscing amet, sit incididunt magna labore do ipsum dolore magna dolor magna consectetur dolor aliqua. labore ipsum tempor tempor Lorem dolor eiusmod consectetur sed et amet, et aliqua. incididunt incididunt ut aliqua. amet, et magna dolore', 'pochette_(13).jpg', 'fantasy'),
	(14, 'The Usual Suspects', 'dolor ut dolore et sit tempor ut sed consectetur incididunt do consectetur aliqua. tempor incididunt ipsum do incididunt et Lorem sed sed ut tempor aliqua. aliqua. labore magna', 'pochette_(14).jpg', 'fantasy'),
	(15, 'Saving Private Ryan', 'sed amet, incididunt dolore aliqua. Lorem ut do eiusmod dolor elit, adipiscing ut adipiscing dolor elit, tempor dolore Lorem aliqua. dolore eiusmod sed magna ipsum et', 'pochette_(15).jpg', 'horror'),
	(16, 'Schindler s List', 'dolor Lorem ipsum incididunt et tempor aliqua. elit, et adipiscing do et ut adipiscing do consectetur ut sed Lorem elit, magna consectetur adipiscing tempor eiusmod ut dolore tempor ipsum Lorem eiusmod ut sed sed magna sed amet, adipiscing do consectetur incididunt incididunt dolor dolore elit,', 'pochette_(16).jpg', 'humor'),
	(17, 'Interstellar', 'do aliqua. amet, amet, aliqua. dolor sed do labore adipiscing Lorem magna amet, ipsum incididunt dolore ipsum consectetur et adipiscing ipsum Lorem et aliqua. tempor sit aliqua. do elit, amet, adipiscing aliqua. ipsum dolore ipsum', 'pochette_(17).jpg', 'action'),
	(18, 'Parasite', 'magna eiusmod ut consectetur amet, eiusmod aliqua. dolor ut adipiscing amet, Lorem eiusmod incididunt Lorem ut sed ut magna labore aliqua. sit ipsum ipsum elit, adipiscing tempor sit aliqua. tempor elit, eiusmod do amet, sit consectetur sed eiusmod sit eiusmod consectetur elit, elit, incididunt Lorem sit', 'pochette_(18).jpg', 'action'),
	(19, 'The Green Mile', 'Lorem aliqua. adipiscing ipsum aliqua. amet, dolore dolor Lorem tempor dolore consectetur sit tempor ut tempor ipsum elit, do consectetur dolore', 'pochette_(19).jpg', 'action'),
	(20, 'Gladiator', 'dolore Lorem adipiscing elit, sed aliqua. dolor magna dolore incididunt sed dolor sit ipsum et do dolore et do dolor do adipiscing elit, dolor consectetur ipsum dolore et consectetur Lorem aliqua. et dolore ut labore eiusmod sit Lorem dolore', 'pochette_(20).jpg', 'humor'),
	(21, 'The Lion King', 'dolor ipsum magna adipiscing eiusmod tempor sit dolor dolor elit, dolore ipsum consectetur incididunt amet, magna incididunt eiusmod aliqua. Lorem amet, ut et sed labore sed ipsum aliqua. ut adipiscing ipsum eiusmod sit dolor do amet, incididunt ut incididunt tempor magna Lorem labore et adipiscing aliqua. consectetur', 'pochette_(21).jpg', 'humor'),
	(22, 'Jurassic Park', 'tempor consectetur amet, adipiscing elit, consectetur incididunt dolor ipsum et dolor ipsum aliqua. elit, amet, et elit, elit, eiusmod sed incididunt ipsum amet, ipsum dolore ipsum Lorem consectetur Lorem elit, magna incididunt adipiscing ut et elit, ut labore incididunt aliqua. consectetur eiusmod incididunt adipiscing aliqua. Lorem do eiusmod', 'pochette_(22).jpg', 'fantasy'),
	(23, 'Terminator 2: Judgment Day', 'dolor aliqua. do et Lorem magna ut labore eiusmod labore dolore et ipsum dolore ipsum consectetur tempor magna amet, consectetur dolore magna dolore labore consectetur', 'pochette_(23).jpg', 'fantasy'),
	(24, 'The Prestige', 'sit adipiscing sed aliqua. elit, do consectetur consectetur tempor magna amet, sed ut dolor adipiscing dolor eiusmod eiusmod incididunt eiusmod sed magna incididunt dolore et magna eiusmod elit, eiusmod do consectetur labore magna amet, sed sed sed eiusmod sed tempor dolor consectetur', 'pochette_(24).jpg', 'horror'),
	(25, 'The Departed', 'incididunt sed adipiscing tempor ipsum consectetur incididunt labore labore eiusmod dolore consectetur Lorem elit, sit ipsum incididunt Lorem sit amet,', 'pochette_(25).jpg', 'action'),
	(26, 'Django Unchained', 'consectetur tempor Lorem consectetur labore dolor aliqua. sit adipiscing ut ut sit incididunt Lorem labore elit, do magna aliqua. tempor adipiscing aliqua. ipsum magna sed dolor consectetur ipsum ut', 'pochette_(26).jpg', 'fantasy'),
	(27, 'The Shining', 'aliqua. dolor aliqua. eiusmod dolor dolore labore ut aliqua. ut magna et adipiscing consectetur amet, elit, incididunt eiusmod incididunt incididunt amet, amet, labore labore do consectetur eiusmod elit, magna sit amet, Lorem aliqua. tempor tempor incididunt elit, elit, aliqua. incididunt incididunt Lorem', 'pochette_(27).jpg', 'fantasy'),
	(28, 'Back to the Future', 'ipsum et sit do sit dolore dolore adipiscing magna sed aliqua. dolor tempor sed ut Lorem amet, dolore amet, amet, dolor amet, consectetur eiusmod eiusmod magna dolore sit sed magna ipsum magna Lorem', 'pochette_(28).jpg', 'humor'),
	(29, 'Whiplash', 'sit consectetur amet, elit, magna sit labore et incididunt magna Lorem magna et et consectetur et incididunt do labore sit do magna dolore incididunt consectetur sed dolore incididunt elit, elit, ut et elit, ipsum amet, consectetur sed dolore ipsum labore tempor adipiscing eiusmod adipiscing amet,', 'pochette_(29).jpg', 'fantasy'),
	(30, 'Toy Story', 'labore tempor tempor do et dolore tempor ipsum et Lorem ipsum do magna Lorem dolore sit elit, aliqua. sed do amet, incididunt aliqua. aliqua. sed eiusmod aliqua. sit', 'pochette_(30).jpg', 'fantasy'),
	(31, 'Braveheart', 'elit, adipiscing adipiscing elit, consectetur do et magna incididunt sed sed et aliqua. Lorem labore tempor tempor amet, tempor incididunt magna incididunt dolor consectetur incididunt labore ipsum eiusmod dolore amet, ut et elit, eiusmod tempor ut sit tempor', 'pochette_(31).jpg', 'action'),
	(32, 'Memento', 'elit, amet, ipsum amet, sit elit, magna consectetur consectetur incididunt aliqua. eiusmod tempor amet, consectetur incididunt Lorem elit, adipiscing dolor do consectetur et elit, dolore et do ut aliqua. magna tempor eiusmod sed sit sed elit, et do do magna ipsum ipsum tempor', 'pochette_(32).jpg', 'action'),
	(33, 'Alien', 'eiusmod et adipiscing adipiscing Lorem elit, adipiscing elit, incididunt elit, amet, sit elit, Lorem dolore consectetur ut sit tempor dolor ipsum eiusmod ut ut', 'pochette_(33).jpg', 'action'),
	(34, 'The Great Dictator', 'tempor dolor aliqua. ut eiusmod labore incididunt dolor Lorem dolor ipsum ut sed do ipsum incididunt ut incididunt incididunt consectetur dolor dolore labore amet, adipiscing et labore et ut sit dolor elit, et tempor do eiusmod magna ut aliqua. Lorem et do amet, Lorem ipsum sit consectetur dolor sed', 'pochette_(34).jpg', 'horror'),
	(35, 'City of God', 'adipiscing eiusmod Lorem amet, incididunt sed eiusmod sit aliqua. labore magna do Lorem ipsum do do dolor incididunt magna elit, dolore', 'pochette_(35).jpg', 'humor'),
	(36, 'The Pianist', 'tempor aliqua. tempor adipiscing elit, ipsum amet, dolore Lorem ut et ipsum eiusmod ipsum tempor aliqua. ipsum elit, elit, eiusmod sed sed amet, eiusmod sed elit, sed tempor eiusmod ut et adipiscing amet, ut et incididunt labore eiusmod Lorem', 'pochette_(36).jpg', 'humor'),
	(37, 'A Beautiful Mind', 'ut elit, ipsum elit, labore consectetur Lorem dolor amet, do dolor Lorem et et labore incididunt adipiscing tempor magna labore dolor eiusmod sit ut aliqua. dolor do Lorem incididunt sit eiusmod dolore dolore sed dolore tempor ipsum consectetur magna Lorem', 'pochette_(37).jpg', 'humor'),
	(38, 'Avengers: Endgame', 'sit aliqua. elit, consectetur ut ut dolor dolor Lorem et amet, magna labore et Lorem adipiscing ut aliqua. dolore do sed et consectetur dolor incididunt sed consectetur do incididunt do dolore do dolore eiusmod consectetur amet, dolore aliqua. ut dolor do eiusmod elit, et', 'pochette_(38).jpg', 'humor'),
	(39, 'Spirited Away', 'eiusmod amet, ut dolor sed dolor do Lorem et dolor et magna Lorem magna adipiscing incididunt dolor sit sed sit do amet, aliqua. ipsum labore aliqua. amet, adipiscing dolor adipiscing dolor do magna magna Lorem ipsum tempor tempor', 'pochette_(39).jpg', 'action'),
	(40, 'The Wolf of Wall Street', 'adipiscing labore Lorem ipsum dolor dolore ipsum dolor magna elit, sit tempor ipsum consectetur et Lorem magna dolor Lorem sit Lorem et ipsum elit, incididunt eiusmod consectetur tempor do magna elit, et elit, do aliqua. magna tempor ut ut Lorem Lorem eiusmod sed aliqua. dolor Lorem', 'pochette_(40).jpg', 'horror'),
	(41, 'The Social Network', 'sit incididunt sed elit, ut elit, sit magna sit adipiscing Lorem Lorem labore eiusmod eiusmod et sit do ipsum adipiscing do elit, aliqua. et eiusmod elit, Lorem elit, magna aliqua. Lorem dolor ipsum magna do aliqua. magna consectetur', 'pochette_(41).jpg', 'humor'),
	(42, 'Inglourious Basterds', 'amet, eiusmod consectetur dolore labore elit, dolore Lorem magna amet, eiusmod incididunt sed dolor amet, elit, elit, sit ut labore tempor eiusmod consectetur dolor do eiusmod aliqua. magna dolore aliqua. et incididunt do consectetur dolore consectetur eiusmod incididunt aliqua. dolor ipsum aliqua. ut ipsum Lorem sed eiusmod labore sed dolor', 'pochette_(42).jpg', 'horror'),
	(43, 'The Grand Budapest Hotel', 'labore do incididunt et dolor amet, amet, labore consectetur labore magna magna ut labore incididunt incididunt aliqua. Lorem et dolor do adipiscing Lorem adipiscing labore', 'pochette_(43).jpg', 'action'),
	(44, 'Blade Runner 2049', 'sit do consectetur aliqua. dolor aliqua. adipiscing ipsum ut consectetur incididunt do et amet, dolore sed amet, sit amet, aliqua. eiusmod adipiscing ipsum amet, dolor eiusmod consectetur do sit dolor magna eiusmod ut Lorem sed Lorem dolore consectetur', 'pochette_(44).jpg', 'humor'),
	(45, 'La La Land', 'magna do dolore ut incididunt consectetur incididunt et sit eiusmod eiusmod labore tempor elit, eiusmod sit amet, do adipiscing consectetur ut ut eiusmod dolore ut dolor ut Lorem incididunt amet, dolore labore do Lorem elit, aliqua. dolore eiusmod sit incididunt consectetur tempor elit, elit, et consectetur', 'pochette_(45).jpg', 'action'),
	(46, 'Her', 'sed tempor sed eiusmod elit, Lorem ipsum Lorem dolore tempor tempor consectetur ipsum eiusmod dolore tempor consectetur sed tempor magna ut Lorem tempor et eiusmod Lorem elit, dolor incididunt', 'pochette_(46).jpg', 'fantasy'),
	(47, 'Gone Girl', 'ipsum incididunt elit, ut Lorem aliqua. sed dolor sed eiusmod amet, labore aliqua. aliqua. ut tempor ipsum dolor amet, magna dolor dolore consectetur sit sed', 'pochette_(47).jpg', 'horror'),
	(48, 'The Truman Show', 'labore tempor Lorem ut elit, do tempor magna sed dolor sed aliqua. dolor tempor ipsum sed magna elit, dolore tempor aliqua. tempor dolor do sit ipsum Lorem amet, et aliqua. eiusmod elit, Lorem magna sit adipiscing adipiscing incididunt ipsum eiusmod', 'pochette_(48).jpg', 'horror'),
	(49, 'Mad Max: Fury Road', 'eiusmod ipsum dolor amet, ipsum elit, do magna ut dolore ipsum elit, amet, Lorem amet, consectetur dolore ut dolore et Lorem magna et dolor incididunt ut Lorem incididunt adipiscing sit adipiscing tempor labore labore eiusmod eiusmod eiusmod sed do', 'pochette_(49).jpg', 'horror'),
	(50, '12 Years a Slave', 'incididunt dolore eiusmod Lorem sit amet, dolore adipiscing et dolor ipsum ut adipiscing Lorem dolor amet, sit tempor ipsum dolor dolor aliqua. labore amet, adipiscing dolore ipsum consectetur elit, ipsum tempor sed tempor', 'pochette_(50).jpg', 'action');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
