import 'package:flutter/material.dart';
import 'package:try_new_thing/view/arc_progress.dart';
import 'package:try_new_thing/view/intro_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CircularArc(),
    );
  }
}
