/**
 * Author:  Chris Mancuso
 * Created: February 21, 2017
 */

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `WarpedRentals`
--

--
-- Table structure for `ESITokens`
--

CREATE TABLE IF NOT EXISTS `ESITokens` (
    `CharacterID` varchar(20),
    `AccessToken` varchar(100),
    `RefreshToken` varchar(100),
    `RefreshTokenExpiry` varchar(20),
    PRIMARY KEY (`CharacterID`),
    UNIQUE KEY `CharacterID` (`CharacterID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
    `id` varchar(32) NOT NULL,
    `access` int(10) unsigned DEFAULT NULL,
    `data` text,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for `Characters`
--

CREATE TABLE IF NOT EXISTS `Characters` (
    `id` int(20) AUTO_INCREMENT,
    `CharacterID` varchar(12),
    `Name` varchar(100),
    `CorporationID` varchar(12),
    `AccessLevel` int(1) DEFAULT 0,
    `CharacterOwnerHash` varchar(50),
    `CharacterPreviousOwnerHash` varchar(50),
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for `Corporations`
--

CREATE TABLE IF NOT EXISTS `Corporations` (
    `id` int(20) AUTO_INCREMENT,
    `CorporationID` varchar(12),
    `Name` varchar(100),
    `AllianceID` varchar(12),
    `AccessLevel` int(1) DEFAULT 0,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for `Alliances`
--

CREATE TABLE IF NOT EXISTS `Alliances` (
    `id` int(20) AUTO_INCREMENT,
    `AllianceID` varchar(12),
    `Name` varchar(100),
    `AccessLevel` int(1) DEFAULT 0,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for `Standings`
--

CREATE TABLE IF NOT EXISTS `Standings` (
    `id` int(20) AUTO_INCREMENT,
    `EntityID` varchar(12),
    `Alliance` boolean,
    `Corporation` boolean,
    `Character` boolean,
    `Standing` varchar(2),
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for 'MoonDrill'
--

CREATE TABLE IF NOT EXISTS `MoonRental` (
    `StructureId` varchar(20),
    `Name` varchar(50),
    `MoonType` varchar(10),
    `StructureType` varchar(20),
    `Owner` varchar(100),
    `Available` bool,
    `Composition1` varchar(100),
    `Composition2` varchar(100),
    `Composition3` varchar(100),
    `Composition4` varchar(100),
    `CAmount1` decimal(5,2),
    `CAmount2` decimal(5,2),
    `CAmount3` decimal(5,2),
    `CAmount4` decimal(5,2),
    `Price` decimal(20,2),
    `Renter` varchar(100),
    `EndDate` varchar(50),
    PRIMARY KEY (`StructureId`),
    UNIQUE KEY `StructureId` (`StructureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for `SystemRental`
--

CREATE TABLE IF NOT EXISTS `SystemRental` (
    `SystemId` varchar(20),
    `Name` varchar(10),
    `Owner` varchar(200),
    `Reserved` bool,
    `Available` bool,
    `Price` decimal(20,2),
    `Renter` varchar(100),
    `EndDate` varchar(50),
    PRIMARY KEY (`SystemId`),
    UNIQUE KEY `SystemId` (`SystemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `RentalSettings`
--

CREATE TABLE IF NOT EXISTS `RentalSettings` (
    `MoonRentalRate` decimal(5,2),
    `RefineRate` decimal(5,2),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Insert into table `RentalSettings`
--

INSERT INTO `RentalSettings` (`MoonRentalRate`, `RefineRate`) VALUES
(10, 80);

--
-- Table structure for table `ItemComposition`
--

CREATE TABLE IF NOT EXISTS `ItemComposition` (
    `Name` varchar(31) DEFAULT NULL,
    `ItemId` int(10) NOT NULL,
    `BatchSize` int(12) NOT NULL DEFAULT '100',
    `TritaniumNum` int(12) DEFAULT '0',
    `PyeriteNum` int(12) DEFAULT '0',
    `MexallonNum` int(12) DEFAULT '0',
    `IsogenNum` int(12) DEFAULT '0',
    `NocxiumNum` int(12) DEFAULT '0',
    `ZydrineNum` int(12) DEFAULT '0',
    `MegacyteNum` int(12) DEFAULT '0',
    `MorphiteNum` int(12) DEFAULT '0',
    `HeavyWaterNum` int(11) NOT NULL DEFAULT '0',
    `LiquidOzoneNum` int(11) NOT NULL DEFAULT '0',
    `NitrogenIsotopesNum` int(11) NOT NULL DEFAULT '0',
    `HeliumIsotopesNum` int(11) NOT NULL DEFAULT '0',
    `HydrogenIsotopesNum` int(11) NOT NULL DEFAULT '0',
    `OxygenIsotopesNum` int(11) NOT NULL DEFAULT '0',
    `StrontiumClathratesNum` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `oreName` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ItemComposition`
--

INSERT INTO `ItemComposition` (`Name`, `ItemId`, `BatchSize`, `TritaniumNum`, `PyeriteNum`, `MexallonNum`, `IsogenNum`, `NocxiumNum`, `ZydrineNum`, `MegacyteNum`, `MorphiteNum`, `HeavyWaterNum`, `LiquidOzoneNum`, `NitrogenIsotopesNum`, `HeliumIsotopesNum`, `HydrogenIsotopesNum`, `OxygenIsotopesNum`, `StrontiumClathratesNum`) VALUES
('Veldspar', 1230, 100, 415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Concentrated Veldpsar', 17470, 100, 436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Dense Veldspar', 17471, 100, 457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Scordite', 1228, 100, 346, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Condensed Scordite', 17463, 100, 363, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Massive Scordite', 17464, 100, 380, 190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Pyroxeres', 1224, 100, 351, 25, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Solid Pyroxeres', 17459, 100, 368, 26, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Viscous Pyroxeres', 17460, 100, 385, 27, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Plagioclase', 18, 100, 107, 213, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Azure Plagioclase', 17455, 100, 112, 224, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Rich Plagioclase', 17456, 100, 117, 234, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Omber', 1227, 100, 85, 34, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Silvery Omber', 17867, 100, 89, 36, 0, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Golden Omber', 17868, 100, 94, 38, 0, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Kernite', 20, 100, 134, 0, 267, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Luminous Kernite', 17452, 100, 140, 0, 281, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Fiery Kernite', 17453, 100, 147, 0, 294, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Jaspet', 1226, 100, 0, 0, 350, 0, 75, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Pure Jaspet', 17448, 100, 0, 0, 367, 0, 78, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Pristine Jaspet', 17449, 100, 0, 0, 385, 0, 82, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Hemorphite', 1231, 100, 2200, 0, 0, 100, 120, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Vivid Hemorphite', 17444, 100, 2310, 1155, 0, 210, 105, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Radiant Hemorphite', 17445, 100, 2420, 0, 0, 110, 132, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Hedbergite', 21, 100, 0, 1100, 0, 200, 100, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Vitric Hedbergite', 17440, 100, 0, 1155, 0, 210, 105, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Glazed Hedbergite', 17441, 100, 0, 1270, 0, 220, 110, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Gneiss', 1229, 100, 0, 2200, 2400, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Iridescent Gneiss', 17865, 100, 0, 2310, 2520, 315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Prismatic Gneiss', 17866, 100, 0, 2420, 2640, 330, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Dark Ochre', 1232, 100, 10000, 0, 0, 1600, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Onyx Ochre', 17436, 100, 10500, 0, 0, 1680, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Obsidian Ochre', 17437, 100, 11000, 0, 0, 1760, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Spodumain', 19, 100, 56000, 12050, 2100, 450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Bright Spodumain', 17466, 100, 58800, 12652, 2205, 472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Gleaming Spodumain', 17467, 100, 61600, 13255, 2310, 495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Crokite', 1225, 100, 21000, 0, 0, 0, 760, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Sharp Crokite', 17432, 100, 22050, 0, 0, 0, 798, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Crystalline Crokite', 17433, 100, 23100, 0, 0, 0, 836, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Bistot', 1223, 100, 0, 12000, 0, 0, 0, 450, 100, 0, 0, 0, 0, 0, 0, 0, 0),
('Triclinic Bistot', 17428, 100, 0, 12600, 0, 0, 0, 472, 105, 0, 0, 0, 0, 0, 0, 0, 0),
('Monoclinic Bistot', 17429, 100, 0, 13200, 0, 0, 0, 495, 110, 0, 0, 0, 0, 0, 0, 0, 0),
('Arkonor', 22, 100, 22000, 0, 2500, 0, 0, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0),
('Crimson Arkonor', 17425, 100, 23100, 0, 2625, 0, 0, 0, 336, 0, 0, 0, 0, 0, 0, 0, 0),
('Prime Arkonor', 17426, 100, 24200, 0, 2750, 0, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0),
('Mercoxit', 11396, 100, 0, 0, 0, 0, 0, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0),
('Magma Mercoxit', 17869, 100, 0, 0, 0, 0, 0, 0, 0, 315, 0, 0, 0, 0, 0, 0, 0),
('Vitreous Mercoxit', 17870, 100, 0, 0, 0, 0, 0, 0, 0, 330, 0, 0, 0, 0, 0, 0, 0),
('Blue Ice', 16264, 1, 0, 0, 0, 0, 0, 0, 0, 0, 69, 35, 0, 0, 0, 414, 1),
('Thick Blue Ice', 17975, 1, 0, 0, 0, 0, 0, 0, 0, 0, 104, 55, 0, 0, 0, 483, 1),
('Glacial Mass', 16263, 1, 0, 0, 0, 0, 0, 0, 0, 0, 69, 35, 0, 0, 414, 0, 1),
('Smooth Glacial Mass', 17977, 1, 0, 0, 0, 0, 0, 0, 0, 0, 104, 55, 0, 0, 483, 0, 0),
('White Glaze', 16265, 1, 0, 0, 0, 0, 0, 0, 0, 0, 69, 35, 414, 0, 0, 0, 1),
('Pristine White Glaze', 17976, 1, 0, 0, 0, 0, 0, 0, 0, 0, 104, 55, 483, 0, 0, 0, 1),
('Clear Icicle', 16262, 1, 0, 0, 0, 0, 0, 0, 0, 0, 69, 35, 0, 414, 0, 0, 1),
('Enriched Clear Icicle', 17978, 1, 0, 0, 0, 0, 0, 0, 0, 0, 104, 55, 0, 483, 0, 0, 0),
('Glare Crust', 16266, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1381, 691, 0, 0, 0, 0, 35),
('Dark Glitter', 16267, 1, 0, 0, 0, 0, 0, 0, 0, 0, 691, 1381, 0, 0, 0, 0, 69),
('Gelidus', 16268, 1, 0, 0, 0, 0, 0, 0, 0, 0, 345, 691, 0, 0, 0, 0, 104),
('Krystallos', 16269, 1, 0, 0, 0, 0, 0, 0, 0, 0, 173, 691, 0, 0, 0, 0, 173);