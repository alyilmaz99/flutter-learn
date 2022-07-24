import 'package:flutter/cupertino.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:try_new_thing/view/intro_page_view.dart';

abstract class IntroPageViewModel extends State<IntroPage> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        title: "ERASER",
        description:
            "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        pathImage: "assets/eraser.png",
        backgroundColor: const Color(0xfff5a623),
      ),
    );
    slides.add(
      Slide(
        title: "PENCIL",
        description:
            "Ye indulgence unreserved connection alteration appearance",
        pathImage: "assets/pika.png",
        backgroundColor: const Color(0xff203152),
      ),
    );
    slides.add(
      Slide(
        title: "RULER",
        description:
            "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "assets/bird.png",
        backgroundColor: const Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    print("End of slides");
  }
}
