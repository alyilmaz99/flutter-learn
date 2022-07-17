import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:temaayarlaridersi/constant.dart';
import 'constant.dart';

class GenderCard extends StatelessWidget {
  final IconData gender;
  final String genderIsmi;

  GenderCard({this.gender = FontAwesomeIcons.mars , this.genderIsmi = "Erkek"});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gender,
          color: Colors.black54,
          size: 50,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          genderIsmi,
          style: kMetinStili,
        ),
      ],
    );
  }
}