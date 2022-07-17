import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("json/videoinfo.json")
        .then((value) => {info = json.decode(value)});
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.indigo.shade800,
            Colors.indigo.shade400,
          ],
          begin: const FractionalOffset(0.0, 0.4),
          end: Alignment.topRight,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.white70,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Icon(
                      Icons.info_outline,
                      size: 20,
                      color: Colors.white70,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Legs Toning",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "and Glutes Workout",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Colors.white24.withOpacity(0.2),
                            Colors.indigo.shade200.withOpacity(0.2),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "68 min",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 220,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Colors.white24.withOpacity(0.2),
                            Colors.indigo.shade200.withOpacity(0.2),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.handyman_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Resistent band, kettebell",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(70),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Circuit 1: Legs Toning",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Icon(
                            Icons.loop_outlined,
                            color: Colors.indigo,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "3 Sets",
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
