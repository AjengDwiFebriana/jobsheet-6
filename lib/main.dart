import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget {
  final GlobalKey<StateTeksUtama> key;

  TeksUtama(this.key) : super(key: key);

  @override
  State<StatefulWidget> createState() => StateTeksUtama();
}

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Ajeng Dwi Febriana',
    'Radhitiya Arkan',
    'Kaina Audriana',
    'Juriyo Antonio',
    'Saga Agastian',
    'Haksa Pradiga',
    'Sebastian Michaelis',
    'Mark Lee'
  ];
  var listWarna = [
    Colors.red,
    Colors.purple,
    Colors.teal,
    Colors.lime,
    Colors.indigo,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
    Colors.yellow
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Greatest Of All Time',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
        Text(
          listNama[index % listNama.length],
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: listWarna[index % listWarna.length],
          ),
        ),
      ],
    );
  }
}

void main() {
  final GlobalKey<StateTeksUtama> teksUtamaKey = GlobalKey<StateTeksUtama>();

  runApp(MaterialApp(
    title: 'Hello World',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Stateful Widget'),
      ),
      body: Center(
        child: TeksUtama(teksUtamaKey),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
        onPressed: () {
          if (teksUtamaKey.currentState != null) {
            teksUtamaKey.currentState!.incrementIndex();
          }
        },
      ),
    ),
  ));
}
