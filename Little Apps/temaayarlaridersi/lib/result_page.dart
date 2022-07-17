import 'package:flutter/material.dart';
import 'package:temaayarlaridersi/constant.dart';
import 'user_data.dart';
import 'hesap.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;

  ResultPage(this._userData);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuc Sayfası"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Center(child: Text(Hesap(_userData).hesaplama().round().toString(),style: kMetinStili,),),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Geri Dön ',
                  style: kMetinStili,
                )),
          ),
        ],
      ),
    );
  }
}
