import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'Bugün Ne Yesem?',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  void yemekdegis() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
    });
  }

  List corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'TavukSuyu',
    'Düğün Çorbası',
    'Yogurt',
  ];

  List yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık',
  ];

  List tatliAdlari = ['Kadayıf', 'Baklava', 'Sütlaç', 'Kazandibi', 'Dondurma'];

  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: yemekdegis,
                child: Image.asset('assets/images/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: yemekdegis,
                child: Image.asset('assets/images/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: yemekdegis,
                child: Image.asset('assets/images/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            tatliAdlari[tatliNo-1],
            style: TextStyle(fontSize: 20,),
          ),
        ],
      ),
    );
  }
}
