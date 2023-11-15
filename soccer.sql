-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 15 nov 2023 om 14:26
-- Serverversie: 10.4.28-MariaDB
-- PHP-versie: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soccer`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `account`
--

CREATE TABLE `account` (
  `AccountID` int(11) NOT NULL,
  `Naam` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Wachtwoord` varchar(255) NOT NULL,
  `IsAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `account`
--

INSERT INTO `account` (`AccountID`, `Naam`, `Email`, `Wachtwoord`, `IsAdmin`) VALUES
(1, 'Quinten van Meijeren', 'quinten.2004@live.nl', 'Noot@123!', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `assist`
--

CREATE TABLE `assist` (
  `AssistID` int(11) NOT NULL,
  `GoalID` int(11) NOT NULL,
  `MinuteAssisted` varchar(255) NOT NULL,
  `PlayerID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `assist`
--

INSERT INTO `assist` (`AssistID`, `GoalID`, `MinuteAssisted`, `PlayerID`, `MatchID`) VALUES
(1, 1, '15:01', 6, 1),
(2, 2, '15:23', 4, 1),
(3, 3, '15:28', 9, 1),
(4, 8, '15:38', 20, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `assist-table`
--

CREATE TABLE `assist-table` (
  `AssistID` int(11) NOT NULL,
  `GoalID` int(11) NOT NULL,
  `MinuteAssisted` varchar(255) NOT NULL,
  `PlayerID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `assist-table`
--

INSERT INTO `assist-table` (`AssistID`, `GoalID`, `MinuteAssisted`, `PlayerID`, `MatchID`) VALUES
(1, 1, '15:01', 6, 1),
(2, 2, '15:23', 4, 1),
(3, 3, '15:28', 9, 1),
(4, 8, '15:38', 20, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `goal`
--

CREATE TABLE `goal` (
  `GoalID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `PlayerID` int(11) NOT NULL,
  `TeamID` int(11) NOT NULL,
  `MinuteScored` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `goal`
--

INSERT INTO `goal` (`GoalID`, `MatchID`, `PlayerID`, `TeamID`, `MinuteScored`) VALUES
(1, 1, 20, 2, '15:02'),
(2, 1, 14, 2, '15:24'),
(3, 1, 5, 1, '15:31'),
(4, 1, 4, 1, '15:46'),
(5, 1, 7, 1, '15:52'),
(6, 2, 17, 2, '15:15'),
(7, 2, 18, 2, '15:27'),
(8, 2, 6, 1, '15:42');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `goal-table`
--

CREATE TABLE `goal-table` (
  `GoalID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `PlayerID` int(11) NOT NULL,
  `TeamID` int(11) NOT NULL,
  `MinuteScored` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `goal-table`
--

INSERT INTO `goal-table` (`GoalID`, `MatchID`, `PlayerID`, `TeamID`, `MinuteScored`) VALUES
(1, 1, 20, 2, '15:02'),
(2, 1, 14, 2, '15:24'),
(3, 1, 5, 1, '15:31'),
(4, 1, 4, 1, '15:46'),
(5, 1, 7, 1, '15:52'),
(6, 2, 17, 2, '15:15'),
(7, 2, 18, 2, '15:27'),
(8, 2, 6, 1, '15:42');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `match`
--

CREATE TABLE `match` (
  `MatchID` int(11) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Venue` varchar(255) NOT NULL,
  `Referee` varchar(255) NOT NULL,
  `HomeTeamID` int(11) NOT NULL,
  `AwayTeamID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `match`
--

INSERT INTO `match` (`MatchID`, `Date`, `Venue`, `Referee`, `HomeTeamID`, `AwayTeamID`) VALUES
(1, '02-02-2024', 'Londen', 'Peter Pannenkoek', 1, 2),
(2, '02-03-2024', 'Amsterdam', 'Luki Luuk', 2, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `match-table`
--

CREATE TABLE `match-table` (
  `MatchID` int(11) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Venue` varchar(255) NOT NULL,
  `Referee` varchar(255) NOT NULL,
  `HomeTeamID` int(11) NOT NULL,
  `AwayTeamID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `match-table`
--

INSERT INTO `match-table` (`MatchID`, `Date`, `Venue`, `Referee`, `HomeTeamID`, `AwayTeamID`) VALUES
(1, '02-02-2024', 'Londen', 'Peter Pannenkoek', 1, 2),
(2, '02-03-2024', 'Amsterdam', 'Luki Luuk', 2, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `matches`
--

CREATE TABLE `matches` (
  `MatchID` int(11) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Venue` varchar(255) NOT NULL,
  `Referee` varchar(255) NOT NULL,
  `HomeTeamID` int(11) NOT NULL,
  `AwayTeamID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `matches`
--

INSERT INTO `matches` (`MatchID`, `Date`, `Venue`, `Referee`, `HomeTeamID`, `AwayTeamID`) VALUES
(1, '02-02-2024', 'Londen', 'Peter Pannenkoek', 1, 2),
(2, '02-03-2024', 'Amsterdam', 'Luki Luuk', 2, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `player`
--

CREATE TABLE `player` (
  `PlayerID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `DateOfBirth` varchar(50) NOT NULL,
  `Nationality` varchar(255) NOT NULL,
  `TeamID` int(11) NOT NULL,
  `Stats` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `player`
--

INSERT INTO `player` (`PlayerID`, `FirstName`, `LastName`, `DateOfBirth`, `Nationality`, `TeamID`, `Stats`) VALUES
(1, 'Chang', 'Bang', '09-23-1996', 'Ierland', 1, 'Stamina: 5'),
(2, 'Snothat', 'Jokerson', '12-12-2012', 'Noorwegen', 1, 'Stamina: 12'),
(4, 'Auften', 'Sweihnhunde', '02-03-2004', 'Duitsland', 1, 'Stamina: 10'),
(5, 'Karl', 'Barl', '20-11-1997', 'Polen', 1, '657'),
(6, 'Jhon', 'Doe', '31-12-1999', 'Verenigde Staten', 1, ''),
(8, 'Mohammed', 'Talbi', '16-07-2004', 'Nederland', 1, ''),
(10, 'The', 'Crinch', 'N/A', 'Zuidpool of zo', 1, ''),
(11, 'Octo', 'Tentakel', '21-06-1984', 'Noordelijke Atlantische Oceaan', 1, ''),
(12, 'Peter', 'Pan', '09-09-1929', 'Groot Britannië', 2, ''),
(13, 'Luca', 'Lekkerkerker', '23-10-2003', 'Nederland', 2, ''),
(14, 'Discord', 'Moderator', '01-01-01', 'Pangea', 2, ''),
(15, 'Lui', 'Kang', '29-12-1977', 'Japan', 2, ''),
(16, 'Omni', 'Man', '19-04-1000', 'Vultrimon', 2, ''),
(17, 'Evelynn', 'Horny', '25-05-2001', 'Hornyland', 2, ''),
(18, 'Peter', 'Hollenberg', '16-07-1984', 'Nederland', 2, ''),
(19, 'Krogan', 'Halter', '18-08-1987', 'Marokko', 2, ''),
(20, 'Klondike', 'Prospector', 'N/A', 'Canada', 2, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `player-table`
--

CREATE TABLE `player-table` (
  `PlayerID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `DateOfBirth` varchar(50) NOT NULL,
  `Nationality` varchar(255) NOT NULL,
  `TeamID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `player-table`
--

INSERT INTO `player-table` (`PlayerID`, `FirstName`, `LastName`, `DateOfBirth`, `Nationality`, `TeamID`) VALUES
(1, 'Chang', 'Bang', '09-23-1996', 'Ierland', 1),
(2, 'Snothat', 'Jokerson', '12-12-2012', 'Noorwegen', 1),
(3, 'Willem', 'Hendrikus', '25-05-2002', 'Nederland', 1),
(4, 'Auften', 'Sweihnhunde', '02-03-2004', 'Duitsland', 1),
(5, 'Karl', 'Barl', '20-11-1997', 'Polen', 1),
(6, 'Jhon', 'Doe', '31-12-1999', 'Verenigde Staten', 1),
(7, 'Pang', 'Wang', '27-08-1989', 'China', 1),
(8, 'Mohammed', 'Talbi', '16-07-2004', 'Nederland', 1),
(9, 'Santa', 'Claus', 'N/A', 'Noordpool', 1),
(10, 'The', 'Crinch', 'N/A', 'Zuidpool of zo', 1),
(11, 'Octo', 'Tentakel', '21-06-1984', 'Noordelijke Atlantische Oceaan', 1),
(12, 'Peter', 'Pan', '09-09-1929', 'Groot Britannië', 2),
(13, 'Luca', 'Lekkerkerker', '23-10-2003', 'Nederland', 2),
(14, 'Discord', 'Moderator', '01-01-01', 'Pangea', 2),
(15, 'Lui', 'Kang', '29-12-1977', 'Japan', 2),
(16, 'Omni', 'Man', '19-04-1000', 'Vultrimon', 2),
(17, 'Evelynn', 'Horny', '25-05-2001', 'Hornyland', 2),
(18, 'Peter', 'Hollenberg', '16-07-1984', 'Nederland', 2),
(19, 'Krogan', 'Halter', '18-08-1987', 'Marokko', 2),
(20, 'Klondike', 'Prospector', 'N/A', 'Canada', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team`
--

CREATE TABLE `team` (
  `TeamID` int(11) NOT NULL,
  `TeamName` varchar(255) NOT NULL,
  `CoachName` varchar(255) NOT NULL,
  `FoundationYear` varchar(50) NOT NULL,
  `HomeStadium` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `team`
--

INSERT INTO `team` (`TeamID`, `TeamName`, `CoachName`, `FoundationYear`, `HomeStadium`) VALUES
(1, 'The BlitzKrieg', 'Proffe Einsteint', '2004', 'The Tombstone'),
(2, 'Cinnamon Rollz', 'Willy Wonka', '1987', 'Wonderland');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team-table`
--

CREATE TABLE `team-table` (
  `TeamID` int(11) NOT NULL,
  `TeamName` varchar(255) NOT NULL,
  `CoachName` varchar(255) NOT NULL,
  `FoundationYear` varchar(50) NOT NULL,
  `HomeStadium` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `team-table`
--

INSERT INTO `team-table` (`TeamID`, `TeamName`, `CoachName`, `FoundationYear`, `HomeStadium`) VALUES
(1, 'The BlitzKrieg', 'Proffe Einsteint', '2004', 'The Tombstone'),
(2, 'Cinnamon Rollz', 'Willy Wonka', '1987', 'Wonderland');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`AccountID`);

--
-- Indexen voor tabel `assist`
--
ALTER TABLE `assist`
  ADD PRIMARY KEY (`AssistID`),
  ADD KEY `AssistGoal` (`GoalID`),
  ADD KEY `AssistPlayer` (`PlayerID`),
  ADD KEY `AssisrMatch` (`MatchID`);

--
-- Indexen voor tabel `assist-table`
--
ALTER TABLE `assist-table`
  ADD PRIMARY KEY (`AssistID`),
  ADD KEY `AssistGoal` (`GoalID`),
  ADD KEY `AssistPlayer` (`PlayerID`),
  ADD KEY `AssisrMatch` (`MatchID`);

--
-- Indexen voor tabel `goal`
--
ALTER TABLE `goal`
  ADD PRIMARY KEY (`GoalID`),
  ADD KEY `MatchGoals` (`MatchID`),
  ADD KEY `PlayerGoals` (`PlayerID`),
  ADD KEY `TeamGoals` (`TeamID`);

--
-- Indexen voor tabel `goal-table`
--
ALTER TABLE `goal-table`
  ADD PRIMARY KEY (`GoalID`),
  ADD KEY `MatchGoals` (`MatchID`),
  ADD KEY `PlayerGoals` (`PlayerID`),
  ADD KEY `TeamGoals` (`TeamID`);

--
-- Indexen voor tabel `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`MatchID`),
  ADD KEY `HomeTeam` (`HomeTeamID`),
  ADD KEY `AwayTeam` (`AwayTeamID`);

--
-- Indexen voor tabel `match-table`
--
ALTER TABLE `match-table`
  ADD PRIMARY KEY (`MatchID`),
  ADD KEY `HomeTeam` (`HomeTeamID`),
  ADD KEY `AwayTeam` (`AwayTeamID`);

--
-- Indexen voor tabel `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`MatchID`),
  ADD KEY `HomeTeam` (`HomeTeamID`),
  ADD KEY `AwayTeam` (`AwayTeamID`);

--
-- Indexen voor tabel `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`PlayerID`),
  ADD KEY `PlayerTeam` (`TeamID`);

--
-- Indexen voor tabel `player-table`
--
ALTER TABLE `player-table`
  ADD PRIMARY KEY (`PlayerID`),
  ADD KEY `PlayerTeam` (`TeamID`);

--
-- Indexen voor tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TeamID`);

--
-- Indexen voor tabel `team-table`
--
ALTER TABLE `team-table`
  ADD PRIMARY KEY (`TeamID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `account`
--
ALTER TABLE `account`
  MODIFY `AccountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `assist`
--
ALTER TABLE `assist`
  MODIFY `AssistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `assist-table`
--
ALTER TABLE `assist-table`
  MODIFY `AssistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `goal`
--
ALTER TABLE `goal`
  MODIFY `GoalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `goal-table`
--
ALTER TABLE `goal-table`
  MODIFY `GoalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `match`
--
ALTER TABLE `match`
  MODIFY `MatchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `match-table`
--
ALTER TABLE `match-table`
  MODIFY `MatchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `matches`
--
ALTER TABLE `matches`
  MODIFY `MatchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `player`
--
ALTER TABLE `player`
  MODIFY `PlayerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT voor een tabel `player-table`
--
ALTER TABLE `player-table`
  MODIFY `PlayerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT voor een tabel `team`
--
ALTER TABLE `team`
  MODIFY `TeamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `team-table`
--
ALTER TABLE `team-table`
  MODIFY `TeamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `assist-table`
--
ALTER TABLE `assist-table`
  ADD CONSTRAINT `AssisrMatch` FOREIGN KEY (`MatchID`) REFERENCES `match-table` (`MatchID`),
  ADD CONSTRAINT `AssistGoal` FOREIGN KEY (`GoalID`) REFERENCES `goal-table` (`GoalID`),
  ADD CONSTRAINT `AssistPlayer` FOREIGN KEY (`PlayerID`) REFERENCES `player-table` (`PlayerID`);

--
-- Beperkingen voor tabel `goal-table`
--
ALTER TABLE `goal-table`
  ADD CONSTRAINT `MatchGoals` FOREIGN KEY (`MatchID`) REFERENCES `match-table` (`MatchID`),
  ADD CONSTRAINT `PlayerGoals` FOREIGN KEY (`PlayerID`) REFERENCES `player-table` (`PlayerID`),
  ADD CONSTRAINT `TeamGoals` FOREIGN KEY (`TeamID`) REFERENCES `team-table` (`TeamID`);

--
-- Beperkingen voor tabel `match-table`
--
ALTER TABLE `match-table`
  ADD CONSTRAINT `AwayTeam` FOREIGN KEY (`AwayTeamID`) REFERENCES `team-table` (`TeamID`),
  ADD CONSTRAINT `HomeTeam` FOREIGN KEY (`HomeTeamID`) REFERENCES `team-table` (`TeamID`);

--
-- Beperkingen voor tabel `player-table`
--
ALTER TABLE `player-table`
  ADD CONSTRAINT `PlayerTeam` FOREIGN KEY (`TeamID`) REFERENCES `team-table` (`TeamID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
