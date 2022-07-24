import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:try_new_thing/viewmodel/intro_page_viewmodel.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends IntroPageViewModel {
  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: slides,
      onDonePress: onDonePress,
      autoScroll: true,
      autoScrollInterval: const Duration(seconds: 10),
      hideStatusBar: false,
      colorDot: Colors.white,
      colorActiveDot: Colors.white,
    );
  }
}
