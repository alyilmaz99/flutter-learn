import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/images/resim.jpg'),
                ),
                Text(
                  'Raistlin Majere',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  'BEST HERO EVER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                Container(
                  width:200 ,
                  child: Divider(
                    height: 30,
                    color: Colors.brown,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  color: Colors.lightBlueAccent,
                  child: ListTile(
                    leading: Icon(
                      Icons.ac_unit_sharp,
                      color: Colors.black,
                    ),
                    title: Text(
                      'ASİDŞLKZLXJŞLSAKŞLXZCASD,',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  color: Colors.lightBlueAccent,
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                    title: Text(
                      'AŞSLDJSALKDJLKZXJCLKSA',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
