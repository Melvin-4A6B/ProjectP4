CREATE TABLE `kabelchecklisten3` (
  `Opdrachtnummer` int(11) NOT NULL,
  `KabelId` int(11) NOT NULL,
  `Breuk_6D` int(11) NOT NULL,
  `Breuk_30D` int(11) NOT NULL,
  `Beschadiging_Buitenzijde` int(11) NOT NULL,
  `Beschadiging_Roest_Corrosie` int(11) NOT NULL,
  `Verminderde_Kabeldiameter` int(11) NOT NULL,
  `Positie_Meetpunten` int(11) NOT NULL,
  `Beschadiging_Totaal` int(11) NOT NULL,
  `Type_Beschadiging_Roestvorming` int(11) NOT NULL
);

INSERT INTO `kabelchecklisten3` (`Opdrachtnummer`, `KabelId`, `Breuk_6D`, `Breuk_30D`, `Beschadiging_Buitenzijde`, `Beschadiging_Roest_Corrosie`, `Verminderde_Kabeldiameter`, `Positie_Meetpunten`, `Beschadiging_Totaal`, `Type_Beschadiging_Roestvorming`) VALUES
(1, 1, 10, 100, 1, 1, 1, 1, 1, 1),
(1, 2, 20, 200, 2, 2, 2, 2, 2, 2),
(1, 3, 30, 300, 3, 3, 3, 3, 3, 3),
(2, 4, 40, 400, 4, 4, 4, 4, 4, 4),
(2, 5, 50, 500, 5, 5, 5, 5, 5, 5),
(3, 6, 60, 600, 6, 6, 6, 6, 6, 6);

CREATE TABLE `opdrachten1` (
  `Opdrachtnummer` int(11) NOT NULL,
  `Werkinstructie` text NOT NULL,
  `Datum_Uitvoering` datetime NOT NULL,
  `Kabelleverancier` varchar(255) NOT NULL,
  `Waarnemingen` text NOT NULL,
  `Handtekening` varchar(255) NOT NULL,
  `Aantal_Bedrijfsuren` int(11) NOT NULL,
  `Afleg_Redenen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `opdrachten1` (`Opdrachtnummer`, `Werkinstructie`, `Datum_Uitvoering`, `Kabelleverancier`, `Waarnemingen`, `Handtekening`, `Aantal_Bedrijfsuren`, `Afleg_Redenen`) VALUES
(1, 'Werkinstructie 1', '2017-05-19 13:11:06', 'Leverancier 1', 'Waarneming 1', 'Handtekening 1', 11, 'Aflegredenen 1'),
(2, 'Werkinstructie 2', '2017-05-19 13:11:06', 'Leverancier 2', 'Waarneming 2', 'Handtekening 2', 22, 'Aflegredenen 2'),
(3, 'Werkinstructie 3', '2017-05-19 13:11:06', 'Leverancier 3', 'Waarneming 3', 'Handtekening 3', 33, 'Aflegredenen 3'),
(4, 'Werkinstructie 4', '2017-05-19 13:11:06', 'Leverancier 4', 'Waarneming 4', 'Handtekening 4', 44, 'Aflegredenen 4');

ALTER TABLE `kabelchecklisten3`
  ADD PRIMARY KEY (`KabelId`);

ALTER TABLE `opdrachten1`
  ADD PRIMARY KEY (`Opdrachtnummer`);

ALTER TABLE `opdrachten1`
  MODIFY `Opdrachtnummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 5;