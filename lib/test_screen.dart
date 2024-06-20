import 'package:flutter/material.dart';
import 'result_screen.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int currentQuestionIndex = 0;
  List<String> selectedMost = List<String>.filled(24, '', growable: false);
  List<String> selectedLeast = List<String>.filled(24, '', growable: false);

  final List<Map<String, String>> questions = [
    {
      'a': 'Aardig, vriendelijk',
      'b': 'Overtuigend, overredend',
      'c': 'Terughoudend, bescheiden, gereserveerd',
      'd': 'Origineel, inventief, individualistisch'
    },
    {
      'a': 'Charmant, attractief, trekt anderen aan',
      'b': 'Cooperatief, aangenaam',
      'c': 'Koppig, onbuigzaam',
      'd': 'Lief, innemend',
    },
    {
      'a': 'Volgzaam, makkelijk te leiden',
      'b': 'Durver, stoutmoedig',
      'c': 'Trouw, toegewijd, loyaal',
      'd': 'Charmant, aangenaam',
    },
    {
      'a': 'Open-minded, ontvankelijk',
      'b': 'Attent, behulpzaam',
      'c': 'Sterke wil, eigen wil',
      'd': 'Vrolijk, vreugdevol',
    },
    {
      'a': 'Joviaal, grappig',
      'b': 'Precies, exact',
      'c': 'Direct, confronterend',
      'd': 'Gelijkmatig gehumeurd, rustig, niet opgewonden',
    },
    {
      'a': 'Competitie gevoelig, wil winnen',
      'b': 'Zorgzaam, attent',
      'c': 'Uitgaand, pleziermakend',
      'd': 'Harmonieus, aangenaam',
    },
    {
      'a': 'Druk, moeilijk te plezieren',
      'b': 'Gehoorzaam, plichtsgetrouw',
      'c': 'Vastbesloten, moeilijk te veroveren',
      'd': 'Speels, vol levensvreugde',
    },
    {
      'a': 'Moedig, niet snel bang',
      'b': 'Inspirerend, stimulerend, motiverend',
      'c': 'Meegaand, terughoudend, toegevend',
      'd': 'Rustig, verlegen, stil',
    },
    {
      'a': 'Ga graag met anderen om, sociable',
      'b': 'Geduldig, tolerant, evenwichtig',
      'c': 'Onafhankelijk, vol zelfvertrouwen',
      'd': 'Vriendelijk, goedaardig, gereserveerd',
    },
    {
      'a': 'Avontuurlijk, kansen aangrijpend',
      'b': 'Receptief, open voor suggesties',
      'c': 'Hartelijk, warm, vriendelijk',
      'd': 'Gematigd, ontwijkt extremiteiten',
    },
    {
      'a': 'Praat graag en veel',
      'b': 'Gecontroleerd, gereserveerd',
      'c': 'Conventioneel, handelt zoals gewoonlijk',
      'd': 'Besluitvaardig, duidelijk in beslissingen',
    },
    {
      'a': 'Gepolijst, vlotte prater',
      'b': 'Durfal, risiconemer',
      'c': 'Diplomatiek, tactvol in de omgang',
      'd': 'Tevreden, content',
    },
    {
      'a': 'Agressief, uitdagend, onderneemt actie',
      'b': 'Fuifnummer, uitgaand onderhoudend',
      'c': 'Makkelijk doelwit, kan moeilijk nee zeggen',
      'd': 'Overbezorgd, soms angstig en bang',
    },
    {
      'a': 'Omzichtig, behoedzaam, voorzichtig',
      'b': 'Vastbesloten, ferm, niet aarzelend',
      'c': 'Overtuigend, verzekerend',
      'd': 'Goedgehumeurd, plezierig',
    },
    {
      'a': 'Bereidwillig, meegaand',
      'b': 'Gretig, verlangend',
      'c': 'Aangenaam, prettig, toestemmend',
      'd': 'Zeer energiek, levendig, enthousiast',
    },
    {
      'a': 'Vol zelfvertrouwen, zelfverzekerd',
      'b': 'Welwillend, meevoelend, begrijpend',
      'c': 'Tolerant',
      'd': 'Assertief, conflictriskerend',
    },
    {
      'a': 'Goed gedisciplineerd, zelfbeheersd',
      'b': 'Edelmoedig, deel met anderen',
      'c': 'Opgewekt, levendig, spreekt met gebaren',
      'd': 'Volhardend, onverbiddelijk, geeft niet op',
    },
    {
      'a': 'Zeer gewaardeerd, verdient lof',
      'b': 'Aardig, bereid tot geven of helpen',
      'c': 'Opgevend, toegevend',
      'd': 'Krachtig karakter, sterk',
    },
    {
      'a': 'Respectvol, toont respect',
      'b': 'Pionier, onderzoeker, ondernemend',
      'c': 'Optimistisch, positief denker',
      'd': 'Inschikkelijk, staat altijd klaar',
    },
    {
      'a': 'Strijdt graag, bewijzend, confronterend',
      'b': 'Makkelijk aanpassend, flexibel',
      'c': 'Nochalant, soms onverschillig, onbezorgd',
      'd': 'Opgewekt, zorgeloos',
    },
    {
      'a': 'Vol vertrouwen, vertrouwt anderen',
      'b': 'Tevreden, voldaan',
      'c': 'Positief, laat geen twijfels toe',
      'd': 'Vreedzaam, rustig, kalm',
    },
    {
      'a': 'Sluit makkelijk aan, graag onder mensen',
      'b': 'Cultureel ontwikkeld, kennis van zaken',
      'c': 'Krachtig, energiek',
      'd': 'Mild, niet strikt, tolerant',
    },
    {
      'a': 'Gezellig, makkelijk in omgang',
      'b': 'Accuraat, precies, correct',
      'c': 'Openhartig, spreekt vrijuit, stoutmoedig, durft',
      'd': 'In bedwang, gereserveerd, beheersd',
    },
    {
      'a': 'Rusteloos, kan niet goed ontspannen, altijd bezig',
      'b': 'Vriendelijk, in goede verstandhouding',
      'c': 'Populair, graag gezien',
      'd': 'Ordelijk, netjes, georganiseerd',
    },
  ];

  void _nextQuestion() {
    if (selectedMost[currentQuestionIndex].isNotEmpty &&
        selectedLeast[currentQuestionIndex].isNotEmpty) {
      if (currentQuestionIndex < questions.length - 1) {
        setState(() {
          currentQuestionIndex++;
        });
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(selectedMost, selectedLeast),
          ),
        );
      }
    }
  }

  void _previousQuestion() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('DISC Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'Vraag ${currentQuestionIndex + 1} van ${questions.length}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Kies de stelling die het meest en het minst bij je past:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Past het meest bij mij',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Past het minst bij mij',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            for (var option in currentQuestion.entries)
              ListTile(
                title: Text(option.value),
                leading: Radio(
                  value: option.key,
                  groupValue: selectedMost[currentQuestionIndex],
                  onChanged: (value) {
                    setState(() {
                      selectedMost[currentQuestionIndex] = value!;
                    });
                  },
                ),
                trailing: Radio(
                  value: option.key,
                  groupValue: selectedLeast[currentQuestionIndex],
                  onChanged: (value) {
                    setState(() {
                      selectedLeast[currentQuestionIndex] = value!;
                    });
                  },
                ),
              ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _previousQuestion,
                  child: const Text('Vorige'),
                ),
                ElevatedButton(
                  onPressed: _nextQuestion,
                  child: const Text('Volgende'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
