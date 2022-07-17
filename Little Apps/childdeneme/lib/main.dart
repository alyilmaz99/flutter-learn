import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.brown,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.white,
                height: 100,
              ),
              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.blue,
              ),
            ],

          ),

        ),
      ),
    );
  }


}