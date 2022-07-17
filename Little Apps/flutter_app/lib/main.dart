import 'package:flutter/material.dart';
import 'test_veri.dart';
import 'constant.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];

  // List<String> sorular = [
  //   'Titanic gelmiş geçmiş en büyük gemidir',
  //   'Dünyadaki tavuk sayısı insan sayısından fazladır',
  //   'Kelebeklerin ömrü bir gündür',
  //   'Dünya düzdür',
  //   'Kaju fıstığı aslında bir meyvenin sapıdır',
  //   'Fatih Sultan Mehmet hiç patates yememiştir',
  //   'Fransızlar 80 demek için, 4 - 20 der',
  // ];

  // List<bool> yanitlar = [false, true, false, false, true, true];

  // Soru soru_1 = Soru(
  //     soruMetni: 'Titanic gelmiş geçmiş en büyük gemidir', soruYaniti: false);
  // Soru soru_2 = Soru(
  //     soruMetni: 'Dünyadaki tavuk sayısı insan sayısından fazladır', ,soruYaniti: true);
  // Soru soru_3 = Soru(
  //     soruMetni: 'Kelebeklerin ömrü bir gündür', , soruYaniti: false);
  // Soru soru_4 = Soru(soruMetni: 'Dünya düzdür', soruYaniti: false);
  // Soru soru_5 = Soru(
  //     soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır', soruYaniti: true);
  // Soru soru_6 = Soru(
  //     soruMetni: 'Fransızlar 80 demek için, 4 - 20 der', soruYaniti: true);

  TestVeri test_1 = TestVeri();

  void butonFonksiyonu(bool secilenButon) {
    if (test_1.testBittiMi() == true) {
      //alert dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert Diaglog Title"),
            content: new Text("Alert dialog body"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Close"),
                onPressed: () {
                  setState(() {
                    test_1.testiSifirla();
                    secimler=[];
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
      );


    } else {
      setState(() {
        test_1.getSoruYanit() == secilenButon
            ? secimler.add(kDogruIcon)
            : secimler.add(kYanlisIcon);

        test_1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
            alignment: WrapAlignment.start,
            runSpacing: 3,
            spacing: 3,
            direction: Axis.horizontal,
            children: secimler),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            butonFonksiyonu(false);
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            butonFonksiyonu(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}
