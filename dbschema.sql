-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2018 at 06:55 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skytrade`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `userid` int(11) NOT NULL,
  `btc` varchar(50) NOT NULL,
  `eth` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`userid`, `btc`, `eth`) VALUES
(51, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', '');

-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `coin` varchar(10) NOT NULL,
  `total` float NOT NULL,
  `available` float NOT NULL,
  `inorder` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balances`
--

INSERT INTO `balances` (`id`, `userid`, `coin`, `total`, `available`, `inorder`) VALUES
(1, 51, 'BTC', 0.39, 0, 0),
(2, 51, 'ETH', 0, 0, 0),
(3, 51, 'XRP', 0, 0, 0),
(4, 51, 'BCH', 0, 0, 0),
(5, 51, 'LTC', 0, 0, 0),
(6, 51, 'EOS', 0, 0, 0),
(7, 51, 'ADA', 0, 0, 0),
(8, 51, 'XLM', 0, 0, 0),
(9, 51, 'NEO', 0, 0, 0),
(10, 51, 'MIOTA', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coinlist`
--

CREATE TABLE `coinlist` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `symbol` varchar(30) NOT NULL,
  `binance` int(11) NOT NULL,
  `bittrex` int(11) NOT NULL,
  `kucoin` int(11) NOT NULL,
  `bitfinex` int(11) NOT NULL,
  `okex` int(11) NOT NULL,
  `kraken` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coinlist`
--

INSERT INTO `coinlist` (`id`, `name`, `symbol`, `binance`, `bittrex`, `kucoin`, `bitfinex`, `okex`, `kraken`) VALUES
(1, 'Bitcoin', 'BTC', 1, 1, 1, 1, 1, 0),
(2, 'Ethereum', 'ETH', 1, 1, 1, 1, 1, 1),
(3, 'Ripple', 'XRP', 1, 1, 0, 1, 1, 1),
(4, 'Bitcoin Cash', 'BCH', 0, 0, 0, 1, 0, 1),
(5, 'Litecoin', 'LTC', 1, 1, 1, 1, 1, 1),
(6, 'EOS', 'EOS', 1, 0, 1, 1, 1, 1),
(7, 'Cardano', 'ADA', 1, 1, 0, 0, 0, 0),
(8, 'Stellar', 'XLM', 1, 1, 0, 0, 1, 1),
(9, 'NEO', 'NEO', 1, 1, 1, 1, 1, 0),
(10, 'IOTA', 'MIOTA', 1, 0, 0, 0, 1, 0),
(11, 'Monero', 'XMR', 1, 1, 0, 1, 1, 1),
(12, 'Dash', 'DASH', 1, 1, 1, 0, 1, 1),
(13, 'TRON', 'TRX', 1, 1, 0, 1, 1, 0),
(14, 'Tether', 'USDT', 0, 0, 0, 0, 0, 1),
(15, 'NEM', 'XEM', 1, 1, 0, 0, 1, 0),
(16, 'Binance Coin', 'BNB', 1, 0, 0, 0, 0, 0),
(17, 'Ethereum Classic', 'ETC', 1, 1, 1, 1, 1, 1),
(18, 'VeChain', 'VEN', 1, 0, 1, 0, 0, 0),
(19, 'Qtum', 'QTUM', 1, 1, 1, 0, 1, 0),
(20, 'OmiseGO', 'OMG', 1, 1, 1, 1, 1, 0),
(21, 'Verge', 'XVG', 1, 1, 0, 0, 0, 0),
(22, 'Ontology', 'ONT', 1, 0, 1, 0, 1, 0),
(23, 'Lisk', 'LSK', 1, 1, 0, 0, 0, 0),
(24, 'ICON', 'ICX', 1, 0, 0, 0, 1, 0),
(25, 'Nano', 'NANO', 1, 0, 0, 0, 1, 0),
(26, 'Bitcoin Gold', 'BTG', 1, 1, 1, 1, 1, 0),
(27, 'Zcash', 'ZEC', 1, 1, 0, 1, 1, 1),
(28, 'Bytom', 'BTM', 0, 0, 1, 0, 1, 0),
(29, 'Steem', 'STEEM', 1, 1, 0, 0, 0, 0),
(30, 'Populous', 'PPT', 1, 0, 1, 0, 1, 0),
(31, 'DigixDAO', 'DGD', 1, 0, 0, 0, 1, 0),
(32, 'Bytecoin', 'BCN', 0, 0, 0, 0, 0, 0),
(33, 'BitShares', 'BTS', 1, 0, 0, 0, 0, 0),
(34, 'Siacoin', 'SC', 0, 1, 0, 0, 0, 0),
(35, 'Bitcoin Diamond', 'BCD', 1, 0, 1, 0, 1, 0),
(36, 'Stratis', 'STRAT', 1, 1, 0, 0, 0, 0),
(37, 'Waves', 'WAVES', 1, 1, 0, 0, 0, 0),
(38, 'Decred', 'DCR', 0, 1, 0, 0, 0, 0),
(39, 'RChain', 'RHOC', 0, 0, 1, 0, 0, 0),
(40, 'Aeternity', 'AE', 1, 0, 0, 0, 0, 0),
(41, 'Dogecoin', 'DOGE', 0, 1, 0, 0, 0, 0),
(42, 'Maker', 'MKR', 0, 0, 0, 0, 1, 0),
(43, 'Status', 'SNT', 1, 1, 1, 1, 1, 0),
(44, 'Zilliqa', 'ZIL', 1, 0, 1, 0, 0, 0),
(45, '0x', 'ZRX', 1, 1, 0, 1, 1, 0),
(46, 'Augur', 'REP', 0, 1, 0, 1, 0, 1),
(47, 'IOStoken', 'IOST', 1, 0, 1, 0, 1, 0),
(48, 'Komodo', 'KMD', 1, 1, 0, 0, 0, 0),
(49, 'Ardor', 'ARDR', 0, 1, 0, 0, 0, 0),
(50, 'Aion', 'AION', 1, 0, 1, 0, 0, 0),
(51, 'Hshare', 'HSR', 1, 0, 1, 0, 1, 0),
(52, 'Cryptonex', 'CNX', 0, 0, 0, 0, 0, 0),
(53, 'PIVX', 'PIVX', 1, 1, 0, 0, 0, 0),
(54, 'Waltonchain', 'WTC', 1, 0, 1, 0, 1, 0),
(55, 'Centrality', 'CENNZ', 0, 0, 0, 0, 0, 0),
(56, 'Loopring', 'LRC', 1, 1, 0, 1, 1, 0),
(57, 'Ark', 'ARK', 1, 1, 0, 0, 1, 0),
(58, 'KuCoin Shares', 'KCS', 0, 0, 1, 0, 0, 0),
(59, 'Veritaseum', 'VERI', 0, 0, 0, 0, 0, 0),
(60, 'MonaCoin', 'MONA', 0, 1, 0, 0, 0, 0),
(61, 'Basic Attention Token', 'BAT', 1, 1, 0, 1, 0, 0),
(62, 'DigiByte', 'DGB', 0, 1, 1, 0, 1, 0),
(63, 'QASH', 'QASH', 0, 0, 0, 0, 0, 0),
(64, 'Factom', 'FCT', 0, 1, 0, 0, 0, 0),
(65, 'Dragonchain', 'DRGN', 0, 0, 1, 0, 0, 0),
(66, 'Golem', 'GNT', 0, 1, 0, 1, 1, 0),
(67, 'Elastos', 'ELA', 0, 0, 0, 0, 0, 0),
(68, 'Nebulas', 'NAS', 0, 0, 0, 0, 1, 0),
(69, 'GXChain', 'GXS', 1, 0, 0, 0, 0, 0),
(70, 'Electroneum', 'ETN', 0, 0, 1, 0, 0, 0),
(71, 'Gas', 'GAS', 1, 0, 1, 0, 1, 0),
(72, 'aelf', 'ELF', 1, 0, 1, 1, 1, 0),
(73, 'Ethos', 'ETHOS', 0, 0, 0, 0, 0, 0),
(74, 'Revain', 'R', 0, 0, 1, 0, 1, 0),
(75, 'Syscoin', 'SYS', 1, 1, 0, 0, 0, 0),
(76, 'FunFair', 'FUN', 1, 0, 0, 1, 1, 0),
(77, 'Substratum', 'SUB', 1, 0, 1, 0, 1, 0),
(78, 'Kyber Network', 'KNC', 1, 0, 1, 0, 1, 0),
(79, 'ZCoin', 'XZC', 1, 1, 0, 0, 0, 0),
(80, 'Byteball Bytes', 'GBYTE', 0, 1, 0, 0, 0, 0),
(81, 'MaidSafeCoin', 'MAID', 0, 0, 0, 0, 0, 0),
(82, 'Nxt', 'NXT', 0, 1, 0, 0, 0, 0),
(83, 'Storm', 'STORM', 1, 0, 0, 0, 0, 0),
(84, 'ReddCoin', 'RDD', 0, 1, 0, 0, 0, 0),
(85, 'SALT', 'SALT', 1, 1, 0, 0, 1, 0),
(86, 'Nucleus Vision', 'NCASH', 1, 0, 0, 0, 0, 0),
(87, 'Power Ledger', 'POWR', 1, 1, 1, 0, 0, 0),
(88, 'Skycoin', 'SKY', 0, 0, 0, 0, 0, 0),
(89, 'Dent', 'DENT', 0, 0, 1, 0, 1, 0),
(90, 'ChainLink', 'LINK', 1, 0, 0, 0, 1, 0),
(91, 'Kin', 'KIN', 0, 0, 0, 0, 0, 0),
(92, 'Bancor', 'BNT', 1, 1, 0, 0, 1, 0),
(93, 'Storj', 'STORJ', 1, 1, 0, 0, 1, 0),
(94, 'Request Network', 'REQ', 1, 0, 1, 1, 1, 0),
(95, 'Neblio', 'NEBL', 1, 0, 1, 0, 0, 0),
(96, 'Enigma', 'ENG', 1, 1, 0, 0, 1, 0),
(97, 'Dentacoin', 'DCN', 0, 0, 0, 0, 0, 0),
(98, 'TenX', 'PAY', 0, 1, 1, 0, 1, 0),
(99, 'WAX', 'WAX', 0, 1, 1, 1, 0, 0),
(100, 'Cindicator', 'CND', 1, 0, 0, 0, 0, 0),
(101, 'Emercoin', 'EMC', 0, 1, 0, 0, 0, 0),
(102, 'Particl', 'PART', 0, 1, 0, 0, 0, 0),
(103, 'Genaro Network', 'GNX', 0, 0, 0, 0, 1, 0),
(104, 'Achain', 'ACT', 0, 0, 1, 0, 1, 0),
(105, 'ZenCash', 'ZEN', 0, 1, 0, 0, 1, 0),
(106, 'Iconomi', 'ICN', 1, 0, 0, 0, 1, 1),
(107, 'Vertcoin', 'VTC', 0, 1, 0, 0, 0, 0),
(108, 'Nexus', 'NXS', 0, 1, 0, 0, 0, 0),
(109, 'Matrix AI Network', 'MAN', 0, 0, 0, 0, 0, 0),
(110, 'Dropil', 'DROP', 0, 0, 0, 0, 0, 0),
(111, 'Enjin Coin', 'ENJ', 1, 0, 1, 0, 1, 0),
(112, 'MinexCoin', 'MNX', 0, 0, 0, 0, 0, 0),
(113, 'Credits', 'CS', 0, 0, 1, 0, 0, 0),
(114, 'Nuls', 'NULS', 1, 0, 1, 0, 1, 0),
(115, 'Polymath', 'POLY', 0, 1, 1, 0, 0, 0),
(116, 'Mithril', 'MITH', 0, 0, 0, 0, 1, 0),
(117, 'Metal', 'MTL', 1, 0, 0, 0, 1, 0),
(118, 'Decentraland', 'MANA', 1, 1, 0, 0, 1, 0),
(119, 'POA Network', 'POA', 1, 0, 0, 0, 0, 0),
(120, 'SmartCash', 'SMART', 0, 0, 0, 0, 0, 0),
(121, 'Civic', 'CVC', 0, 1, 1, 0, 1, 0),
(122, 'Blocknet', 'BLOCK', 0, 1, 0, 0, 0, 0),
(123, 'High Performance Blockchain', 'HPB', 0, 0, 1, 0, 0, 0),
(124, 'GameCredits', 'GAME', 0, 1, 0, 0, 0, 0),
(125, 'Monaco', 'MCO', 1, 1, 0, 0, 1, 0),
(126, 'iExec RLC', 'RLC', 1, 1, 0, 1, 0, 0),
(127, 'Bitcore', 'BTX', 0, 0, 0, 0, 0, 0),
(128, 'BOScoin', 'BOS', 0, 0, 1, 0, 0, 0),
(129, 'Gnosis', 'GNO', 0, 1, 0, 0, 0, 1),
(130, 'Fusion', 'FSN', 0, 0, 0, 0, 0, 0),
(131, 'Genesis Vision', 'GVT', 1, 0, 1, 0, 0, 0),
(132, 'Cube', 'AUTO', 0, 0, 0, 0, 1, 0),
(133, 'SIRIN LABS Token', 'SRN', 0, 1, 0, 0, 0, 0),
(134, 'SingularityNET', 'AGI', 0, 0, 1, 1, 0, 0),
(135, 'Time New Bank', 'TNB', 1, 0, 0, 1, 1, 0),
(136, 'Aragon', 'ANT', 0, 1, 0, 0, 0, 0),
(137, 'Po.et', 'POE', 1, 0, 1, 0, 1, 0),
(138, 'Theta Token', 'THETA', 0, 0, 0, 0, 1, 0),
(139, 'Quantstamp', 'QSP', 1, 0, 1, 0, 0, 0),
(140, 'Raiden Network Token', 'RDN', 1, 0, 1, 1, 1, 0),
(141, 'Santiment Network Token', 'SAN', 0, 0, 0, 1, 1, 0),
(142, 'Ignis', 'IGNIS', 0, 1, 0, 0, 0, 0),
(143, 'BitcoinDark', 'BTCD', 0, 0, 0, 0, 0, 0),
(144, 'Dynamic Trading Rights', 'DTR', 0, 0, 0, 0, 0, 0),
(145, 'Oyster', 'PRL', 0, 0, 1, 0, 0, 0),
(146, 'DeepBrain Chain', 'DBC', 0, 0, 1, 0, 0, 0),
(147, 'Ubiq', 'UBQ', 0, 1, 0, 0, 0, 0),
(148, 'NavCoin', 'NAV', 1, 1, 0, 0, 0, 0),
(149, 'PayPie', 'PPP', 0, 0, 0, 0, 0, 0),
(150, 'THEKEY', 'TKY', 0, 0, 1, 0, 0, 0),
(151, 'Arcblock', 'ABT', 0, 0, 0, 0, 1, 0),
(152, 'Loom Network', 'LOOM', 0, 0, 1, 0, 0, 0),
(153, 'DigitalNote', 'XDN', 0, 1, 0, 0, 0, 0),
(154, 'Envion', 'EVN', 0, 0, 0, 0, 0, 0),
(155, 'Pillar', 'PLR', 0, 0, 0, 0, 0, 0),
(156, 'Gifto', 'GTO', 1, 0, 0, 0, 1, 0),
(157, 'CyberMiles', 'CMT', 1, 0, 0, 0, 1, 0),
(158, 'Bluzelle', 'BLZ', 1, 0, 0, 0, 0, 0),
(159, 'Groestlcoin', 'GRS', 1, 1, 0, 0, 0, 0),
(160, 'SaluS', 'SLS', 0, 1, 0, 0, 0, 0),
(161, 'Paypex', 'PAYX', 0, 0, 0, 0, 0, 0),
(162, 'DEW', 'DEW', 0, 0, 0, 0, 0, 0),
(163, 'SmartMesh', 'SMT', 0, 0, 0, 0, 1, 0),
(164, 'ION', 'ION', 0, 1, 0, 0, 0, 0),
(165, 'Eidoo', 'EDO', 1, 0, 0, 1, 1, 0),
(166, 'BLOCKv', 'VEE', 0, 1, 0, 0, 1, 0),
(167, 'XTRABYTES', 'XBY', 0, 0, 0, 0, 0, 0),
(168, 'Bibox Token', 'BIX', 0, 0, 0, 0, 0, 0),
(169, 'Pura', 'PURA', 0, 0, 1, 0, 0, 0),
(170, 'Ripio Credit Network', 'RCN', 1, 1, 0, 1, 1, 0),
(171, 'ETHLend', 'LEND', 1, 0, 1, 0, 1, 0),
(172, 'Asch', 'XAS', 0, 0, 1, 0, 0, 0),
(173, 'MediBloc', 'MED', 0, 0, 0, 0, 0, 0),
(174, 'Telcoin', 'TEL', 0, 0, 1, 0, 0, 0),
(175, 'BridgeCoin', 'BCO', 0, 0, 0, 0, 0, 0),
(176, 'SONM', 'SNM', 1, 0, 1, 0, 1, 0),
(177, 'OST', 'OST', 1, 0, 0, 0, 1, 0),
(178, 'Quantum Resistant Ledger', 'QRL', 0, 1, 0, 0, 0, 0),
(179, 'AdEx', 'ADX', 1, 1, 0, 0, 0, 0),
(180, 'Ruff', 'RUFF', 0, 0, 0, 0, 0, 0),
(181, 'Edgeless', 'EDG', 0, 1, 0, 0, 0, 0),
(182, 'Scry.info', 'DDD', 0, 0, 0, 0, 0, 0),
(183, 'IoT Chain', 'ITC', 0, 0, 1, 0, 1, 0),
(184, 'CRYPTO20', 'C20', 0, 0, 0, 0, 0, 0),
(185, 'DATA', 'DTA', 0, 0, 1, 0, 0, 0),
(186, 'SophiaTX', 'SPHTX', 0, 0, 1, 0, 0, 0),
(187, 'Ambrosus', 'AMB', 1, 0, 1, 0, 0, 0),
(188, 'Peercoin', 'PPC', 0, 1, 0, 0, 0, 0),
(189, 'SpankChain', 'SPANK', 0, 0, 0, 0, 0, 0),
(190, 'Feathercoin', 'FTC', 0, 1, 0, 0, 0, 0),
(191, 'BitBay', 'BAY', 0, 1, 0, 0, 0, 0),
(192, 'Einsteinium', 'EMC2', 0, 1, 0, 0, 0, 0),
(193, 'Streamr DATAcoin', 'DATA', 0, 0, 0, 0, 0, 0),
(194, 'Red Pulse', 'RPX', 1, 0, 1, 0, 0, 0),
(195, 'AirSwap', 'AST', 1, 0, 0, 0, 1, 0),
(196, 'Experience Points', 'XP', 0, 0, 0, 0, 0, 0),
(197, 'Crypterium', 'CRPT', 0, 0, 0, 0, 0, 0),
(198, 'INS Ecosystem', 'INS', 1, 0, 1, 0, 1, 0),
(199, 'MediShares', 'MDS', 0, 0, 0, 0, 0, 0),
(200, 'Wings', 'WINGS', 1, 1, 0, 0, 0, 0),
(201, 'UTRUST', 'UTK', 0, 0, 1, 0, 1, 0),
(202, 'WePower', 'WPR', 1, 0, 0, 0, 0, 0),
(203, 'SingularDTV', 'SNGLS', 1, 0, 0, 0, 1, 0),
(204, 'Gulden', 'NLG', 0, 1, 0, 0, 0, 0),
(205, 'Ormeus Coin', 'ORME', 0, 0, 0, 0, 0, 0),
(206, 'MobileGo', 'MGO', 0, 0, 0, 0, 0, 0),
(207, 'CasinoCoin', 'CSC', 0, 0, 0, 0, 0, 0),
(208, 'Pundi X', 'NPXS', 0, 0, 0, 0, 0, 0),
(209, 'NAGA', 'NGC', 0, 0, 0, 0, 1, 0),
(210, 'Modum', 'MOD', 1, 0, 1, 0, 0, 0),
(211, 'Bitcoin Atom', 'BCA', 0, 0, 0, 0, 0, 0),
(212, 'district0x', 'DNT', 1, 1, 0, 0, 1, 0),
(213, 'Bread', 'BRD', 1, 0, 0, 0, 1, 0),
(214, 'VIBE', 'VIBE', 1, 0, 0, 0, 0, 0),
(215, 'Ravencoin', 'RVN', 0, 0, 0, 0, 0, 0),
(216, 'TaaS', 'TAAS', 0, 0, 0, 0, 0, 0),
(217, 'AppCoins', 'APPC', 1, 0, 0, 0, 0, 0),
(218, 'Counterparty', 'XCP', 0, 1, 0, 0, 0, 0),
(219, 'Ink', 'INK', 0, 0, 0, 0, 0, 0),
(220, 'Tierion', 'TNT', 1, 0, 0, 0, 0, 0),
(221, 'Rock', 'RKT', 0, 0, 0, 0, 0, 0),
(222, 'Viacoin', 'VIA', 1, 1, 0, 0, 0, 0),
(223, 'Soarcoin', 'SOAR', 0, 0, 0, 0, 0, 0),
(224, 'Universa', 'UTNP', 0, 0, 0, 0, 0, 0),
(225, 'Presearch', 'PRE', 0, 0, 0, 0, 0, 0),
(226, 'OriginTrail', 'TRAC', 0, 0, 1, 0, 0, 0),
(227, 'QLINK', 'QLC', 1, 0, 1, 0, 0, 0),
(228, 'WaBi', 'WABI', 1, 0, 0, 0, 0, 0),
(229, 'LBRY Credits', 'LBC', 0, 1, 0, 0, 0, 0),
(230, 'Trinity Network Credit', 'TNC', 0, 0, 1, 0, 0, 0),
(231, 'Wagerr', 'WGR', 0, 0, 0, 0, 0, 0),
(232, 'bitCNY', 'BITCNY', 0, 0, 0, 0, 0, 0),
(233, 'Burst', 'BURST', 0, 1, 0, 0, 0, 0),
(234, 'Jibrel Network', 'JNT', 0, 0, 1, 0, 0, 0),
(235, 'Bottos', 'BTO', 0, 0, 0, 0, 0, 0),
(236, 'CloakCoin', 'CLOAK', 0, 1, 0, 0, 0, 0),
(237, 'Etherparty', 'FUEL', 1, 0, 0, 0, 0, 0),
(238, 'Unobtanium', 'UNO', 0, 0, 0, 0, 0, 0),
(239, 'Melon', 'MLN', 0, 1, 0, 0, 0, 1),
(240, 'Delphy', 'DPY', 0, 0, 0, 0, 1, 0),
(241, 'BlockMason Credit Protocol', 'BCPT', 1, 1, 1, 0, 0, 0),
(242, 'ERA', 'ERA', 0, 0, 0, 0, 0, 0),
(243, 'LEOcoin', 'LEO', 0, 0, 0, 0, 0, 0),
(244, 'Game.com', 'GTC', 0, 0, 0, 0, 1, 0),
(245, 'IHT Real Estate Protocol', 'IHT', 0, 0, 1, 0, 0, 0),
(246, 'KickCoin', 'KICK', 0, 0, 1, 0, 0, 0),
(247, 'Metaverse ETP', 'ETP', 0, 0, 0, 1, 0, 0),
(248, 'Aeon', 'AEON', 0, 1, 0, 0, 0, 0),
(249, 'HTMLCOIN', 'HTML', 0, 0, 0, 0, 0, 0),
(250, 'Triggers', 'TRIG', 1, 0, 0, 0, 0, 0),
(251, 'Mobius', 'MOBI', 0, 0, 0, 0, 0, 0),
(252, 'Blox', 'CDT', 1, 0, 0, 0, 0, 0),
(253, 'Steem Dollars', 'SBD', 0, 1, 0, 0, 0, 0),
(254, 'Unikoin Gold', 'UKG', 0, 1, 1, 0, 1, 0),
(255, 'Electra', 'ECA', 0, 0, 0, 0, 0, 0),
(256, 'YOYOW', 'YOYOW', 0, 0, 0, 0, 0, 0),
(257, 'CPChain', 'CPC', 0, 0, 0, 0, 0, 0),
(258, 'Cobinhood', 'COB', 0, 0, 0, 0, 0, 0),
(259, 'Namecoin', 'NMC', 0, 0, 0, 0, 0, 1),
(260, 'TomoChain', 'TOMO', 0, 0, 0, 0, 0, 0),
(261, 'Viberate', 'VIB', 1, 1, 0, 0, 1, 0),
(262, 'Nimiq Exchange Token', 'NET', 0, 0, 0, 0, 0, 0),
(263, 'Lykke', 'LKK', 0, 0, 0, 0, 0, 0),
(264, 'TokenCard', 'TKN', 0, 0, 0, 0, 0, 0),
(265, 'LinkEye', 'LET', 0, 0, 0, 0, 0, 0),
(266, 'Dai', 'DAI', 0, 0, 0, 1, 0, 0),
(267, 'Havven', 'HAV', 0, 0, 1, 0, 0, 0),
(268, 'E-Dinar Coin', 'EDR', 0, 0, 0, 0, 0, 0),
(269, 'Flash', 'FLASH', 0, 0, 0, 0, 0, 0),
(270, 'DeepOnion', 'ONION', 0, 0, 1, 0, 0, 0),
(271, 'Synereo', 'AMP', 0, 1, 0, 0, 0, 0),
(272, 'Crown', 'CRW', 0, 1, 0, 0, 0, 0),
(273, 'Safe Exchange Coin', 'SAFEX', 0, 0, 0, 0, 0, 0),
(274, 'Odyssey', 'OCN', 0, 0, 1, 0, 0, 0),
(275, 'Shift', 'SHIFT', 0, 1, 0, 0, 0, 0),
(276, 'DECENT', 'DCT', 0, 1, 0, 0, 0, 0),
(277, 'Humaniq', 'HMQ', 0, 1, 0, 0, 0, 0),
(278, 'Spectre.ai Dividend Token', 'SXDT', 0, 0, 0, 0, 0, 0),
(279, 'FairCoin', 'FAIR', 0, 0, 0, 0, 1, 0),
(280, 'Legolas Exchange', 'LGO', 0, 0, 0, 0, 0, 0),
(281, 'Lunyr', 'LUN', 1, 1, 0, 0, 0, 0),
(282, 'PotCoin', 'POT', 0, 1, 0, 0, 0, 0),
(283, 'Cofound.it', 'CFI', 0, 1, 0, 1, 0, 0),
(284, 'SpaceChain', 'SPC', 0, 0, 0, 0, 0, 0),
(285, 'indaHash', 'IDH', 0, 0, 0, 0, 0, 0),
(286, 'Dimecoin', 'DIME', 0, 0, 0, 0, 0, 0),
(287, 'Mercury', 'MER', 0, 1, 0, 0, 0, 0),
(288, 'Datum', 'DAT', 0, 0, 1, 1, 1, 0),
(289, 'Elastic', 'XEL', 0, 1, 0, 0, 0, 0),
(290, 'ECC', 'ECC', 0, 0, 0, 0, 0, 0),
(291, 'Internet Node Token', 'INT', 0, 0, 0, 0, 1, 0),
(292, 'SunContract', 'SNC', 0, 0, 1, 0, 1, 0),
(293, 'Fortuna', 'FOTA', 0, 0, 1, 0, 0, 0),
(294, 'Bean Cash', 'BITB', 0, 1, 0, 0, 0, 0),
(295, 'Pepe Cash', 'PEPECASH', 0, 0, 0, 0, 0, 0),
(296, 'Mooncoin', 'MOON', 0, 0, 0, 0, 0, 0),
(297, 'DMarket', 'DMT', 0, 1, 0, 0, 0, 0),
(298, 'Monetha', 'MTH', 1, 0, 1, 0, 1, 0),
(299, 'Bankex', 'BKX', 0, 0, 0, 0, 1, 0),
(300, 'WhiteCoin', 'XWC', 0, 1, 0, 0, 0, 0),
(301, 'Everex', 'EVX', 1, 0, 1, 0, 1, 0),
(302, 'adToken', 'ADT', 0, 1, 0, 0, 0, 0),
(303, 'PRIZM', 'PZM', 0, 0, 0, 0, 0, 0),
(304, 'Storiqa', 'STQ', 0, 0, 0, 0, 0, 0),
(305, 'Numeraire', 'NMR', 0, 1, 0, 0, 0, 0),
(306, 'Diamond', 'DMD', 0, 1, 0, 0, 0, 0),
(307, 'UpToken', 'UP', 0, 1, 0, 0, 0, 0),
(308, 'Uquid Coin', 'UQC', 0, 0, 0, 0, 0, 0),
(309, 'BlackCoin', 'BLK', 0, 1, 0, 0, 0, 0),
(310, 'Radium', 'RADS', 0, 1, 0, 0, 0, 0),
(311, 'Trade Token', 'TIO', 0, 0, 1, 0, 1, 0),
(312, 'Mothership', 'MSP', 0, 0, 0, 0, 0, 0),
(313, 'Bloom', 'BLT', 0, 0, 0, 0, 0, 0),
(314, 'SwissBorg', 'CHSB', 0, 0, 1, 0, 0, 0),
(315, 'Zeepin', 'ZPT', 0, 0, 1, 0, 0, 0),
(316, 'Medicalchain', 'MTN', 0, 0, 1, 1, 0, 0),
(317, 'ZClassic', 'ZCL', 0, 1, 0, 0, 0, 0),
(318, 'COSS', 'COSS', 0, 0, 0, 0, 0, 0),
(319, 'Cashaa', 'CAS', 0, 0, 0, 0, 0, 0),
(320, 'QunQun', 'QUN', 0, 0, 0, 0, 1, 0),
(321, 'Republic Protocol', 'REN', 0, 0, 0, 0, 1, 0),
(322, 'GridCoin', 'GRC', 0, 1, 0, 0, 0, 0),
(323, 'Decision Token', 'HST', 0, 0, 1, 0, 0, 0),
(324, 'Moeda Loyalty Points', 'MDA', 1, 0, 0, 0, 1, 0),
(325, 'FirstBlood', '1ST', 0, 0, 0, 0, 1, 0),
(326, 'I/O Coin', 'IOC', 0, 1, 0, 0, 0, 0),
(327, 'SIBCoin', 'SIB', 0, 1, 0, 0, 0, 0),
(328, 'Hive Project', 'HVN', 0, 0, 0, 0, 0, 0),
(329, 'WeTrust', 'TRST', 0, 1, 0, 0, 0, 0),
(330, 'ATMChain', 'ATM', 0, 0, 0, 0, 0, 0),
(331, 'SwftCoin', 'SWFTC', 0, 0, 0, 0, 1, 0),
(332, 'YEE', 'YEE', 0, 0, 0, 0, 1, 0),
(333, 'bitUSD', 'BITUSD', 0, 0, 0, 0, 0, 0),
(334, 'Blocktix', 'TIX', 0, 1, 0, 0, 0, 0),
(335, 'ShipChain', 'SHIP', 0, 0, 0, 0, 0, 0),
(336, 'Primecoin', 'XPM', 0, 0, 0, 0, 0, 0),
(337, 'Selfkey', 'KEY', 0, 0, 1, 0, 1, 0),
(338, 'Electrify.Asia', 'ELEC', 0, 0, 1, 0, 0, 0),
(339, 'Peerplays', 'PPY', 0, 0, 0, 0, 0, 0),
(340, 'STK', 'STK', 0, 0, 1, 0, 0, 0),
(341, 'Blockport', 'BPT', 0, 0, 1, 0, 0, 0),
(342, 'Zeusshield', 'ZSC', 0, 0, 0, 0, 0, 0),
(343, 'VeriCoin', 'VRC', 0, 1, 0, 0, 0, 0),
(344, 'BitClave', 'CAT', 0, 0, 1, 0, 0, 0),
(345, 'ICOS', 'ICOS', 0, 0, 0, 0, 0, 0),
(346, 'Propy', 'PRO', 0, 0, 0, 0, 0, 0),
(347, 'AI Doctor', 'AIDOC', 0, 0, 0, 0, 1, 0),
(348, 'True Chain', 'TRUE', 0, 0, 0, 0, 1, 0),
(349, 'Zoin', 'ZOI', 0, 0, 0, 0, 0, 0),
(350, 'Agrello', 'DLT', 1, 0, 0, 0, 0, 0),
(351, 'Incent', 'INCNT', 0, 1, 0, 0, 0, 0),
(352, 'All Sports', 'SOC', 0, 0, 0, 0, 1, 0),
(353, 'Omni', 'OMNI', 0, 1, 0, 0, 0, 0),
(354, 'Alphacat', 'ACAT', 0, 0, 1, 0, 0, 0),
(355, 'Paragon', 'PRG', 0, 0, 0, 0, 0, 0),
(356, 'Refereum', 'RFR', 0, 0, 0, 0, 1, 0),
(357, 'Matryx', 'MTX', 0, 0, 0, 0, 0, 0),
(358, 'EncrypGen', 'DNA', 0, 0, 1, 0, 1, 0),
(359, 'carVertical', 'CV', 0, 0, 1, 0, 0, 0),
(360, 'CoinMeet', 'MEE', 0, 0, 1, 0, 0, 0),
(361, 'Matchpool', 'GUP', 0, 1, 0, 0, 0, 0),
(362, 'RevolutionVR', 'RVR', 0, 1, 0, 0, 0, 0),
(363, 'Aeron', 'ARN', 1, 0, 1, 0, 0, 0),
(364, 'Qbao', 'QBT', 0, 0, 0, 0, 0, 0),
(365, 'MonetaryUnit', 'MUE', 0, 1, 0, 0, 0, 0),
(366, 'OAX', 'OAX', 1, 0, 0, 0, 1, 0),
(367, 'DADI', 'DADI', 0, 0, 1, 0, 1, 0),
(368, 'Banyan Network', 'BBN', 0, 0, 0, 0, 0, 0),
(369, 'Linda', 'LINDA', 0, 0, 0, 0, 0, 0),
(370, 'SHIELD', 'XSH', 0, 0, 0, 0, 0, 0),
(371, 'NoLimitCoin', 'NLC2', 0, 0, 0, 0, 0, 0),
(372, 'Energo', 'TSL', 0, 0, 0, 0, 0, 0),
(373, 'XPA', 'XPA', 0, 0, 0, 0, 0, 0),
(374, 'LATOKEN', 'LA', 0, 0, 1, 0, 1, 0),
(375, 'Pascal Coin', 'PASC', 0, 0, 0, 0, 0, 0),
(376, 'SolarCoin', 'SLR', 0, 1, 0, 0, 0, 0),
(377, 'Divi', 'DIVX', 0, 0, 0, 0, 0, 0),
(378, 'Bodhi', 'BOT', 0, 0, 0, 0, 0, 0),
(379, 'OracleChain', 'OCT', 0, 0, 0, 0, 0, 0),
(380, 'BitDegree', 'BDG', 0, 0, 0, 0, 0, 0),
(381, 'PoSW Coin', 'POSW', 0, 0, 0, 0, 0, 0),
(382, 'Exchange Union', 'XUC', 0, 0, 0, 0, 1, 0),
(383, 'HempCoin', 'THC', 0, 1, 0, 0, 0, 0),
(384, 'Datawallet', 'DXT', 0, 0, 0, 0, 0, 0),
(385, 'Xaurum', 'XAUR', 0, 0, 0, 0, 0, 0),
(386, 'ALIS', 'ALIS', 0, 0, 0, 0, 0, 0),
(387, 'InsurePal', 'IPL', 0, 0, 0, 0, 0, 0),
(388, 'Bitcoin Green', 'BITG', 0, 0, 0, 0, 0, 0),
(389, 'Zap', 'ZAP', 0, 0, 0, 0, 0, 0),
(390, 'iXledger', 'IXT', 0, 0, 0, 0, 0, 0),
(391, 'Everus', 'EVR', 0, 0, 0, 0, 0, 0),
(392, 'SureRemit', 'RMT', 0, 0, 0, 0, 0, 0),
(393, 'Neumark', 'NEU', 0, 0, 0, 0, 0, 0),
(394, 'Blackmoon', 'BMC', 0, 0, 0, 0, 0, 0),
(395, 'ProChain', 'PRA', 0, 0, 0, 0, 1, 0),
(396, 'Expanse', 'EXP', 0, 1, 0, 0, 0, 0),
(397, 'Lamden', 'TAU', 0, 0, 0, 0, 0, 0),
(398, 'Measurable Data Token', 'MDT', 0, 0, 0, 0, 1, 0),
(399, 'Bismuth', 'BIS', 0, 0, 0, 0, 0, 0),
(400, 'ALQO', 'ALQO', 0, 0, 0, 0, 0, 0),
(401, 'Rialto', 'XRL', 0, 0, 0, 0, 0, 0),
(402, 'True USD', 'TUSD', 0, 1, 0, 0, 0, 0),
(403, 'Lympo', 'LYM', 0, 0, 1, 0, 0, 0),
(404, 'Tao', 'XTO', 0, 0, 0, 0, 0, 0),
(405, 'Leadcoin', 'LDC', 0, 0, 0, 0, 0, 0),
(406, 'Restart Energy MWAT', 'MWAT', 0, 0, 1, 0, 0, 0),
(407, 'Cappasity', 'CAPP', 0, 0, 1, 0, 0, 0),
(408, 'LoMoCoin', 'LMC', 0, 1, 0, 0, 0, 0),
(409, 'Swarm', 'SWM', 0, 0, 0, 0, 0, 0),
(410, 'AICHAIN', 'AIT', 0, 0, 0, 0, 0, 0),
(411, 'NewYorkCoin', 'NYC', 0, 0, 0, 0, 0, 0),
(412, 'Clams', 'CLAM', 0, 1, 0, 0, 0, 0),
(413, 'Polybius', 'PLBT', 0, 0, 0, 0, 0, 0),
(414, 'ATN', 'ATN', 0, 0, 0, 0, 0, 0),
(415, 'Olympus Labs', 'MOT', 0, 0, 0, 0, 1, 0),
(416, 'ToaCoin', 'TOA', 0, 0, 0, 0, 0, 0),
(417, 'Phore', 'PHR', 0, 0, 0, 0, 0, 0),
(418, 'BitSend', 'BSD', 0, 1, 0, 0, 0, 0),
(419, 'DecentBet', 'DBET', 0, 0, 0, 0, 0, 0),
(420, 'Rubycoin', 'RBY', 0, 1, 0, 0, 0, 0),
(421, 'Covesting', 'COV', 0, 0, 1, 0, 0, 0),
(422, 'Databits', 'DTB', 0, 1, 0, 0, 0, 0),
(423, 'Sentinel Chain', 'SENC', 0, 0, 0, 0, 0, 0),
(424, 'Myriad', 'XMY', 0, 1, 0, 0, 0, 0),
(425, 'Waves Community Token', 'WCT', 0, 0, 0, 0, 0, 0),
(426, 'Debitum Network', 'DEB', 0, 0, 1, 0, 0, 0),
(427, 'Stox', 'STX', 0, 0, 1, 0, 0, 0),
(428, 'Universal Currency', 'UNIT', 0, 0, 0, 0, 0, 0),
(429, 'CoinPoker', 'CHP', 0, 0, 0, 0, 0, 0),
(430, 'Boolberry', 'BBR', 0, 0, 0, 0, 0, 0),
(431, 'Snovio', 'SNOV', 0, 0, 1, 0, 0, 0),
(432, 'Mintcoin', 'MINT', 0, 0, 0, 0, 0, 0),
(433, 'Target Coin', 'TGT', 0, 0, 0, 0, 0, 0),
(434, 'Karma', 'KRM', 0, 0, 0, 0, 0, 0),
(435, 'TransferCoin', 'TX', 0, 1, 0, 0, 0, 0),
(436, 'Auroracoin', 'AUR', 0, 1, 0, 0, 0, 0),
(437, 'B2BX', 'B2B', 0, 0, 0, 0, 0, 0),
(438, 'Oxycoin', 'OXY', 0, 0, 0, 0, 0, 0),
(439, 'Hi Mutual Society', 'HMC', 0, 0, 0, 0, 1, 0),
(440, 'NVO', 'NVST', 0, 0, 0, 0, 0, 0),
(441, 'Swarm City', 'SWT', 0, 1, 0, 0, 0, 0),
(442, 'Gambit', 'GAM', 0, 1, 0, 0, 0, 0),
(443, 'CanYaCoin', 'CAN', 0, 0, 1, 0, 1, 0),
(444, 'EarthCoin', 'EAC', 0, 0, 0, 0, 0, 0),
(445, 'Energycoin', 'ENRG', 0, 1, 0, 0, 0, 0),
(446, 'EchoLink', 'EKO', 0, 0, 0, 0, 0, 0),
(447, 'FidentiaX', 'FDX', 0, 0, 0, 0, 0, 0),
(448, 'ATBCoin', 'ATB', 0, 0, 0, 0, 0, 0),
(449, 'Credo', 'CREDO', 0, 0, 0, 0, 0, 0),
(450, 'DomRaider', 'DRT', 0, 0, 0, 0, 0, 0),
(451, 'HelloGold', 'HGT', 0, 0, 0, 0, 0, 0),
(452, 'NeosCoin', 'NEOS', 0, 1, 0, 0, 0, 0),
(453, 'OKCash', 'OK', 0, 1, 0, 0, 0, 0),
(454, 'TokenClub', 'TCT', 0, 0, 0, 0, 1, 0),
(455, 'The ChampCoin', 'TCC', 0, 0, 0, 0, 0, 0),
(456, 'BitConnect', 'BCC', 1, 1, 1, 0, 1, 0),
(457, 'DIMCOIN', 'DIM', 0, 0, 0, 0, 0, 0),
(458, 'Hackspace Capital', 'HAC', 0, 0, 0, 0, 0, 0),
(459, 'FlorinCoin', 'FLO', 0, 1, 0, 0, 0, 0),
(460, 'Patientory', 'PTOY', 0, 1, 0, 0, 0, 0),
(461, 'Primas', 'PST', 0, 0, 0, 0, 1, 0),
(462, 'Aurora DAO', 'AURA', 0, 0, 0, 0, 0, 0),
(463, 'CoinFi', 'COFI', 0, 0, 1, 0, 0, 0),
(464, 'Russian Miner Coin', 'RMC', 0, 0, 0, 0, 0, 0),
(465, 'AirToken', 'AIR', 0, 0, 0, 0, 0, 0),
(466, 'Rivetz', 'RVT', 0, 0, 0, 0, 0, 0),
(467, 'DubaiCoin', 'DBIX', 0, 0, 0, 0, 0, 0),
(468, 'Chronobank', 'TIME', 0, 0, 1, 0, 0, 0),
(469, 'Golos', 'GOLOS', 0, 1, 0, 0, 0, 0),
(470, 'MyBit Token', 'MYB', 0, 0, 0, 0, 0, 0),
(471, 'Quantum', 'QAU', 0, 0, 0, 0, 0, 0),
(472, 'CVCoin', 'CVCOIN', 0, 0, 0, 0, 0, 0),
(473, 'LockChain', 'LOC', 0, 0, 0, 0, 0, 0),
(474, 'Hacken', 'HKN', 0, 0, 1, 0, 0, 0),
(475, 'TE-FOOD', 'TFD', 0, 0, 0, 0, 0, 0),
(476, 'OneRoot Network', 'RNT', 0, 0, 0, 0, 1, 0),
(477, 'GoByte', 'GBX', 0, 0, 0, 0, 0, 0),
(478, 'Spectrecoin', 'XSPEC', 0, 0, 0, 0, 0, 0),
(479, 'SportyCo', 'SPF', 0, 0, 1, 0, 1, 0),
(480, 'InvestFeed', 'IFT', 0, 0, 0, 0, 0, 0),
(481, 'U.CASH', 'UCASH', 0, 0, 0, 0, 0, 0),
(482, 'Remme', 'REM', 0, 0, 0, 0, 0, 0),
(483, 'Nexium', 'NXC', 0, 1, 0, 0, 0, 0),
(484, 'Dynamic', 'DYN', 0, 1, 0, 0, 0, 0),
(485, 'HEAT', 'HEAT', 0, 0, 0, 0, 0, 0),
(486, 'Musicoin', 'MUSIC', 0, 1, 0, 0, 0, 0),
(487, 'ColossusXT', 'COLX', 0, 0, 0, 0, 0, 0),
(488, 'aXpire', 'AXP', 0, 0, 1, 0, 0, 0),
(489, 'Solaris', 'XLR', 0, 0, 1, 0, 0, 0),
(490, 'Polis', 'POLIS', 0, 0, 0, 0, 0, 0),
(491, 'Pluton', 'PLU', 0, 0, 0, 0, 0, 0),
(492, 'Etheroll', 'DICE', 0, 0, 0, 0, 0, 0),
(493, 'ClearCoin', 'CLR', 0, 0, 0, 0, 0, 0),
(494, 'FoldingCoin', 'FLDC', 0, 1, 0, 0, 0, 0),
(495, 'EZToken', 'EZT', 0, 0, 0, 0, 0, 0),
(496, 'Open Trading Network', 'OTN', 0, 0, 0, 0, 0, 0),
(497, 'Eroscoin', 'ERO', 0, 0, 0, 0, 0, 0),
(498, 'Novacoin', 'NVC', 0, 0, 0, 0, 0, 0),
(499, 'Banca', 'BANCA', 0, 0, 0, 0, 0, 0),
(500, 'LUXCoin', 'LUX', 0, 0, 0, 0, 0, 0),
(530, 'Wanchain', 'WAN', 1, 0, 1, 0, 0, 0),
(574, 'Mixin', 'XIN', 0, 0, 0, 0, 0, 0),
(778, 'PACcoin', '$PAC', 0, 0, 0, 0, 0, 0),
(783, 'EDUCare', 'EKT', 0, 0, 0, 0, 0, 0),
(815, 'Grid+', 'GRID', 0, 0, 0, 0, 0, 0),
(869, 'Pareto Network', 'PARETO', 0, 0, 1, 0, 0, 0),
(884, 'HollyWoodCoin', 'HWC', 0, 0, 0, 0, 0, 0),
(887, 'MUSE', 'MUSE', 0, 0, 0, 0, 0, 0),
(895, 'Rise', 'RISE', 0, 0, 0, 0, 0, 0),
(930, 'GoldMint', 'MNTP', 0, 0, 0, 0, 0, 0),
(940, 'BABB', 'BAX', 0, 0, 0, 0, 0, 0),
(961, 'bitqy', 'BQ', 0, 0, 0, 0, 0, 0),
(962, 'BLUE', 'BLUE', 0, 0, 0, 0, 0, 0),
(968, 'CargoX', 'CXO', 0, 0, 1, 0, 0, 0),
(973, 'Block Array', 'ARY', 0, 0, 1, 0, 0, 0),
(976, 'Rentberry', 'BERRY', 0, 0, 0, 0, 0, 0),
(989, 'Sequence', 'SEQ', 0, 1, 0, 0, 0, 0),
(993, 'Hubii Network', 'HBT', 0, 0, 0, 0, 0, 0),
(997, 'Playkey', 'PKT', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_verification`
--

CREATE TABLE `email_verification` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `code` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `address` varchar(40) NOT NULL,
  `plan` int(3) NOT NULL,
  `price` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `address`, `plan`, `price`, `created`) VALUES
(1, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:04:11'),
(2, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 08:04:30'),
(3, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:04:39'),
(4, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:07:45'),
(5, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:09:12'),
(6, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:10:23'),
(7, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:10:34'),
(8, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:11:57'),
(9, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:12:27'),
(10, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:12:37'),
(11, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:13:15'),
(12, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:13:30'),
(13, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:13:31'),
(14, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:13:39'),
(15, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:13:40'),
(16, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:13:46'),
(17, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:13:52'),
(18, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:14:38'),
(19, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:15:25'),
(20, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:18:36'),
(21, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:18:59'),
(22, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:19:01'),
(23, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:19:25'),
(24, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:20:05'),
(25, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:20:23'),
(26, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:20:30'),
(27, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:20:31'),
(28, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:20:33'),
(29, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:20:39'),
(30, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:23:31'),
(31, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:24:13'),
(32, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:25:10'),
(33, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:26:14'),
(34, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:26:15'),
(35, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:26:27'),
(36, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:26:43'),
(37, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:26:47'),
(38, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:27:07'),
(39, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:28:27'),
(40, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 08:28:29'),
(41, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 08:28:31'),
(42, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 08:28:33'),
(43, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 08:28:35'),
(44, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 08:31:00'),
(45, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 08:46:45'),
(46, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 18:11:19'),
(47, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:33:04'),
(48, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:33:39'),
(49, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:36:18'),
(50, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:36:40'),
(51, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:37:14'),
(52, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:37:14'),
(53, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:37:15'),
(54, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:37:19'),
(55, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:37:24'),
(56, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:38:27'),
(57, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:38:29'),
(58, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:38:30'),
(59, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:38:42'),
(60, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:39:16'),
(61, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:39:17'),
(62, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:39:20'),
(63, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:39:45'),
(64, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:40:48'),
(65, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:41:20'),
(66, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:41:38'),
(67, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:41:47'),
(68, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:51:44'),
(69, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:53:46'),
(70, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:53:47'),
(71, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:53:48'),
(72, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:53:48'),
(73, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:53:49'),
(74, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:53:49'),
(75, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:54:35'),
(76, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:54:36'),
(77, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:54:37'),
(78, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:56:46'),
(79, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:58:27'),
(80, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:58:48'),
(81, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:58:49'),
(82, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:59:10'),
(83, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 18:59:20'),
(84, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:00:19'),
(85, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:00:59'),
(86, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:01:09'),
(87, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:01:27'),
(88, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:01:28'),
(89, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:01:29'),
(90, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:01:30'),
(91, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:01:38'),
(92, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:02:25'),
(93, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:02:26'),
(94, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:02:29'),
(95, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:02:52'),
(96, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:02:59'),
(97, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:03:01'),
(98, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:03:06'),
(99, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:03:14'),
(100, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:03:20'),
(101, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:05:34'),
(102, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:05:49'),
(103, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:06:00'),
(104, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:06:05'),
(105, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 19:06:42'),
(106, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 19:07:42'),
(107, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 19:08:19'),
(108, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 19:08:20'),
(109, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 19:08:22'),
(110, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 19:08:22'),
(111, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 19:08:27'),
(112, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 19:09:26'),
(113, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 19:09:33'),
(114, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:12:52'),
(115, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:15:36'),
(116, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:19:13'),
(117, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:19:52'),
(118, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:20:14'),
(119, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:20:46'),
(120, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:20:57'),
(121, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:23:10'),
(122, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:23:32'),
(123, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:24:30'),
(124, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:25:25'),
(125, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:27:46'),
(126, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:28:02'),
(127, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:28:13'),
(128, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:28:31'),
(129, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:28:32'),
(130, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:28:33'),
(131, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:28:49'),
(132, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:28:55'),
(133, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:28:59'),
(134, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:29:03'),
(135, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:29:04'),
(136, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:29:07'),
(137, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:29:18'),
(138, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:29:38'),
(139, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:32:25'),
(140, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:33:50'),
(141, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:34:12'),
(142, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:34:20'),
(143, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 19:34:48'),
(144, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 20:57:24'),
(145, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 21:16:08'),
(146, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 21:23:04'),
(147, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 21:23:05'),
(148, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 21:23:57'),
(149, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 21:23:58'),
(150, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 21:24:06'),
(151, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 21:25:11'),
(152, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 21:34:20'),
(153, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 21:48:53'),
(154, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 21:48:56'),
(155, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 21:49:01'),
(156, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 21:49:12'),
(157, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 21:57:13'),
(158, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 21:57:14'),
(159, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 21:57:23'),
(160, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 21:57:41'),
(161, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 21:58:07'),
(162, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 21:58:16'),
(163, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 21:58:18'),
(164, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 4, 0.05, '2018-04-13 21:58:22'),
(165, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-13 22:00:01'),
(166, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-13 23:30:35'),
(167, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-14 06:55:09'),
(168, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-14 09:37:11'),
(169, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-14 09:37:19'),
(170, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 3, 0.025, '2018-04-14 09:37:38'),
(171, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-17 04:53:11'),
(172, '3JwAcp6Bx2wZ8YB831GNCqrnbbaG55kcFS', 2, 0.005, '2018-04-22 07:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(10) NOT NULL,
  `access` tinyint(4) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `verification` tinyint(4) NOT NULL,
  `regdate` char(10) NOT NULL,
  `lastlogin` char(10) NOT NULL,
  `ip` char(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `access`, `email`, `password`, `verification`, `regdate`, `lastlogin`, `ip`) VALUES
(51, 0, 'admin@cryptostat.org', '7917d3d469a5d3238c9f4e940f51e4074fc70a25', 0, '14-04-2018', '14-04-2018', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coinlist`
--
ALTER TABLE `coinlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `symbol` (`symbol`);

--
-- Indexes for table `email_verification`
--
ALTER TABLE `email_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `coinlist`
--
ALTER TABLE `coinlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=998;
--
-- AUTO_INCREMENT for table `email_verification`
--
ALTER TABLE `email_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
