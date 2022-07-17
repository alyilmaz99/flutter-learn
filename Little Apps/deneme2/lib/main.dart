import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[800],
          title: Center(
            child: Text(
              'Filmler Öneri',
            ),
          ),
        ),
        body:Center(child:
        Image.network(
          'https://www.hindustantimes.com/rf/image_size_960x540/HT/p2/2020/09/10/Pictures/_06e5b642-f34a-11ea-ac5c-9be95d2c150f.jpg',
        ),
        ),
      ),
    ),
  );
}
