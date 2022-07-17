import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.white,
                //width: 200,
                height: 100,
                child: Text(
                  '1.Container',
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                // width: 200,
                height: 100,
                color: Colors.white54,
                child: Text(
                  'Mal diloş',
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                color: Colors.blue,
                //width: 200,
                height: 100,
                child: Text(
                  '3.Container',
                ),
              ),
              Column(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
