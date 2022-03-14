import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:temaayarlaridersi/constant.dart';
import 'package:temaayarlaridersi/result_page.dart';
import 'package:temaayarlaridersi/user_data.dart';
import 'GenderCard.dart';
import 'MyContainer.dart';
import 'result_page.dart';
import 'user_data.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet;
  double icilenSigara = 0.0;
  double sporGun = 0.0;
  int boy = 170;
  int kilo=60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: buildRowOutlineButton(
                      'BOY',
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: buildRowOutlineButton(
                      'KILO',

                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Haftada Kaç Gün Spor Yapıyorsunuz?",
                    style: kMetinStili,
                  ),
                  Text(
                    "${sporGun.round()} ",
                    style: kMaviStili,
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    value: sporGun,
                    divisions: 7,
                    onChanged: (double newValue) {
                      setState(() {
                        sporGun = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Günde Kaç Sigara İçiyorsunuz?",
                    style: kMetinStili,
                  ),
                  Text(
                    '${icilenSigara.round()}',
                    style: kMaviStili,
                  ),
                  Slider(
                    min: 0,
                    max: 30,
                    value: icilenSigara,
                    onChanged: (double newValue) {
                      setState(() {
                        icilenSigara = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = "Kadın";
                      });
                    },
                    renk: seciliCinsiyet == "Kadın"
                        ? Colors.lightBlue[100]
                        : Colors.white,
                    child: GenderCard(
                      gender: FontAwesomeIcons.venus,
                      genderIsmi: "Kadın",
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = "Erkek";
                      });
                    },
                    renk: seciliCinsiyet == "Erkek"
                        ? Colors.lightBlue[100]
                        : Colors.white,
                    child: GenderCard(),
                  ),
                ),
              ],
            ),
          ),
          ButtonTheme(
            height: 50,
            child: FlatButton(
              color: Colors.white,
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
                    UserData(kilo: kilo,boy:boy,seciliCinsiyet: seciliCinsiyet,icilenSigara: icilenSigara,sporGun: sporGun)

                  )));
                
                }, child: Text('Hesapla',style: kMetinStili,)),
          ),
        ],
      ),
    );
  }

  Row buildRowOutlineButton(String label) {

    return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          label,
                          style: kMetinStili,
                        ),
                      ),
                      SizedBox(width: 10,),
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          label=='BOY'?boy.toString():kilo.toString(),
                          style: kMaviStili,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonTheme(
                            minWidth: 30.0,
                            height: 30.0,

                            child: OutlineButton(
                              borderSide: BorderSide(
                                width: 0.5,
                                color: Colors.blue,
                              ),
                              child: Icon(FontAwesomeIcons.plus,size: 15,),
                              onPressed: () {

                                setState(() {
                                  label=='BOY'?boy++:kilo++;
                                });
                              },
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 30.0,
                            height: 30.0,
                            child: OutlineButton(
                              borderSide: BorderSide(
                                width: 0.5,
                                color: Colors.blue,
                              ),

                              child: Icon(FontAwesomeIcons.minus,
                              size: 15,),
                              onPressed: () {
                                setState(() {
                                  label=='BOY'?boy--:kilo--;
                                });
                              },

                            ),
                          ),
                        ],
                      ),
                    ],
                  );
  }
}
