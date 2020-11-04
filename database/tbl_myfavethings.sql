-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 04, 2020 at 03:11 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myfavethings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_myfavethings`
--

DROP TABLE IF EXISTS `tbl_myfavethings`;
CREATE TABLE IF NOT EXISTS `tbl_myfavethings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `start` text NOT NULL,
  `image` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_myfavethings`
--

INSERT INTO `tbl_myfavethings` (`ID`, `name`, `description`, `start`, `image`) VALUES
(1, 'Music', 'While having absolutely no musical talent I am a huge music lover. Between collecting vinyl records and my endless playlists (including my 165 hour master mix of everything I listen to) I am always re listening to my favourite albums and discovering new ones. Some of my all time favourite artists are: Anderson .Paak, The Beatles, Bob Dylan, BROCKHAMPTON, Childish Gambino, David Bowie, Electric Light Orchestra, Elton John, Francis and the Lights, Frank Ocean, Gorillaz, J.Cole, Justice, Kanye West, Kate Bush, Kendrick Lamar, Kid Cudi, Mac DeMarco, Matt Duncan, MF DOOM, MGMT, Peter Gabriel, Queen, Sujan Stevens, Tyler The Creator, The Unicorns, Vulfpeck, Metric, Car Seat Headrest, and the Microphones ', 'I began my exploration of music thanks to my obsession with film. In high school films like Guardians of the Galaxy and Baby Driver inspired me to go out and listen to more than whatever was on the radio.', 'music.jpg'),
(2, 'Film', 'I have always been into films and filmmaking. I am a self proclaimed movie buff and have become the one in the family nobody will play movie trivia with. Some of my favourites are: Eternal Sunshine of the Spotless Mind, There Will Be Blood, Your Name, Mad Max: Fury Road, Pulp Fiction, The Lighthouse, Blade Runner(2049), Good Will Hunting, Whiplash, The Prestige, The Dark Knight, Drive, Princess Mononoke, 2001: A Space Odyssey, Pan\'s Labyrinth, Taxi Driver, Apocalypse Now, The Matrix, One Flew Over the Cuckoo\'s Nest, Birdman, Scott Pilgrim vs. the World, Alien, Some Like it Hot, The Florida Project, The Godfather, John Wick, Kill Bill, Waves, Beauty and the Beast, Seven Samurai, The Social Network, The Lord of the Rings, Inception, Leon: The Professional, The Grand Budapest Hotel, Good Time, The Big Lebowski, Jaws, Baby Driver, Mulholland Drive, Amelie, The Princess Bride, Dancer in the Dark, The Shape of Water, Anomalisa, and Oldboy', 'The first time I went to a movie theatre I was about a month old. Films have just always been something that have been a big part of my life. I can almost break up time in my life by what movies I was getting into at the time, now I\'d estimate that I\'ve got at least 1000 under my belt and show no sign of slowing down.', 'film.jpg'),
(3, 'Dungeons & Dragons', 'Dungeons and Dragons is a cooperative roleplaying tabletop rpg where groups tell stories and roll dice to determine their outcomes. DnD has done so much for me personally. I\'ve made so many friends through the game and have branched into other hobbies like voice acting because of my time as a DM. I\'ve done everything from campaigns with friends to running 2 charity dnd streams that each raised over $1000.', 'I started playing 2nd edition back in elementary school with some friends. I\'ve run for a few groups since and now usually play the most recent and best 5th edition. I\'m actually one of the executive members of Fanshawe\'s DnD club.', 'dnd.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
