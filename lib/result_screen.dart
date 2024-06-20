import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedMost;
  final List<String> selectedLeast;

  const ResultScreen(this.selectedMost, this.selectedLeast, {super.key});

  Map<String, int> calculateScores() {
    Map<String, int> colorScoresMost = {
      'red': 0,
      'yellow': 0,
      'green': 0,
      'blue': 0
    };
    Map<String, int> colorScoresLeast = {
      'red': 0,
      'yellow': 0,
      'green': 0,
      'blue': 0
    };

    List<List<String>> scoringTable = [
      ['d', 'b', 'a', 'c'],
      ['c', 'a', 'd', 'b'],
      ['b', 'd', 'a', 'c'],
      ['c', 'd', 'b', 'a'],
      ['c', 'a', 'd', 'b'],
      ['a', 'c', 'b', 'd'],
      ['a', 'd', 'c', 'b'],
      ['a', 'b', 'c', 'd'],
      ['c', 'a', 'b', 'd'],
      ['a', 'c', 'd', 'b'],
      ['d', 'a', 'c', 'b'],
      ['b', 'a', 'd', 'c'],
      ['a', 'b', 'c', 'd'],
      ['b', 'c', 'd', 'a'],
      ['b', 'd', 'a', 'c'],
      ['d', 'a', 'b', 'c'],
      ['d', 'c', 'b', 'a'],
      ['d', 'a', 'b', 'c'],
      ['b', 'c', 'd', 'a'],
      ['a', 'd', 'b', 'c'],
      ['c', 'a', 'd', 'b'],
      ['c', 'a', 'd', 'b'],
      ['c', 'a', 'd', 'b'],
      ['a', 'c', 'b', 'd'],
    ];

    for (int i = 0; i < selectedMost.length; i++) {
      print('Selected Most $i: ${selectedMost[i]}');
      print('Selected Least $i: ${selectedLeast[i]}');

      if (selectedMost[i] == scoringTable[i][0]) {
        colorScoresMost['red'] = (colorScoresMost['red'] ?? 0) + 1;
      } else if (selectedMost[i] == scoringTable[i][1]) {
        colorScoresMost['yellow'] = (colorScoresMost['yellow'] ?? 0) + 1;
      } else if (selectedMost[i] == scoringTable[i][2]) {
        colorScoresMost['green'] = (colorScoresMost['green'] ?? 0) + 1;
      } else if (selectedMost[i] == scoringTable[i][3]) {
        colorScoresMost['blue'] = (colorScoresMost['blue'] ?? 0) + 1;
      }

      if (selectedLeast[i] == scoringTable[i][0]) {
        colorScoresLeast['red'] = (colorScoresLeast['red'] ?? 0) + 1;
      } else if (selectedLeast[i] == scoringTable[i][1]) {
        colorScoresLeast['yellow'] = (colorScoresLeast['yellow'] ?? 0) + 1;
      } else if (selectedLeast[i] == scoringTable[i][2]) {
        colorScoresLeast['green'] = (colorScoresLeast['green'] ?? 0) + 1;
      } else if (selectedLeast[i] == scoringTable[i][3]) {
        colorScoresLeast['blue'] = (colorScoresLeast['blue'] ?? 0) + 1;
      }
    }

    return {
      'redMost': colorScoresMost['red'] ?? 0,
      'yellowMost': colorScoresMost['yellow'] ?? 0,
      'greenMost': colorScoresMost['green'] ?? 0,
      'blueMost': colorScoresMost['blue'] ?? 0,
      'redLeast': colorScoresLeast['red'] ?? 0,
      'yellowLeast': colorScoresLeast['yellow'] ?? 0,
      'greenLeast': colorScoresLeast['green'] ?? 0,
      'blueLeast': colorScoresLeast['blue'] ?? 0,
    };
  }

  @override
  Widget build(BuildContext context) {
    final scores = calculateScores();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultaten'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Je eigen kleurenmix',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text('Vurig Rood (meest): ${scores['redMost']}'),
            Text('Stralend Geel (meest): ${scores['yellowMost']}'),
            Text('Zacht Groen (meest): ${scores['greenMost']}'),
            Text('Helder Blauw (meest): ${scores['blueMost']}'),
            const SizedBox(height: 20),
            Text('Vurig Rood (minst): ${scores['redLeast']}'),
            Text('Stralend Geel (minst): ${scores['yellowLeast']}'),
            Text('Zacht Groen (minst): ${scores['greenLeast']}'),
            Text('Helder Blauw (minst): ${scores['blueLeast']}'),
            const SizedBox(height: 20),
            const Text(
              'Iedereen gebruikt alle vier de kleuren; je individuele combinatie van de kleuren maakt je UNIEK',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Text(
              'Mensen met een voorkeur voor Vurig Rood hebben een krachtige en sturende uitstraling, zijn open en direct in de omgang met anderen, houden van positieve actie en zitten op een duidelijke koers, zijn vasthoudend en vastberaden in hun focus op resultaat, streven naar een specifieke en tastbare uitkomst.',
            ),
            const SizedBox(height: 10),
            const Text(
              'Mensen met een voorkeur voor Stralend Geel genieten van en zoeken naar het gezelschap van anderen, willen graag erbij betrokken worden, zijn een en al enthousiasme en moedigen anderen aan om mee te doen, zijn overtuigend, innemend en uitnodigend in de omgang met anderen, willen graag dat hun bijdrage wordt opgemerkt en gewaardeerd.',
            ),
            const SizedBox(height: 10),
            const Text(
              'Mensen met een voorkeur voor Zacht Groen streven naar harmonie en diepgang in hun relaties, geven de voorkeur aan een democratisch proces waarin respect voor het individu centraal staat, bekijken de wereld vanuit hun persoonlijke waarden en zetten alles af tegen wat belangrijk voor hen is, zullen alles waar zij veel waarde aan hechten met hand en tand verdedigen, zorgen ervoor dat een ieders standpunt is gehoord en meegenomen in het besluitvormingsproces.',
            ),
            const SizedBox(height: 10),
            const Text(
              'Mensen met een voorkeur voor Helder Blauw houden vast aan een afstandelijk en objectief standpunt, zetten eerst alles goed op een rij voordat ze tot actie overgaan, willen de wereld om hen heen graag kennen en begrijpen, hechten waarde aan autonomie en intellect, willen graag eerst over alle juiste informatie beschikken voordat ze verder gaan.',
            ),
          ],
        ),
      ),
    );
  }
}
