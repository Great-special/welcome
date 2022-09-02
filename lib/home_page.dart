// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Used to change the color of the dove icon
  // ignore: non_constant_identifier_names
  bool is_Tapped = false;
  Color colors = Colors.black;

  // Used to change the image
  // ignore: non_constant_identifier_names
  bool is_clicked = false;
  // ignore: non_constant_identifier_names
  int img_index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Dash"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: GestureDetector(
        onTap: () {
          if (is_clicked) {
            if (img_index < 5) {
              setState(() {
                img_index += 1;
                print(img_index);
              });
            } else {
              img_index = 0;
            }
          } else {
            is_clicked = true;
          }
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.limeAccent,
          padding: const EdgeInsets.all(2.0),
          child: GestureDetector(
            onDoubleTap: () {
              if (is_Tapped == false) {
                is_Tapped = true;
              } else if (is_Tapped == true) {
                is_Tapped = false;
              }
              if (is_Tapped) {
                // print("$is_Tapped setconditions");
                setState(() {
                  colors = Colors.green;
                });
              } else if (!is_Tapped) {
                setState(() {
                  colors = Colors.blueAccent;
                });
              }
            },
            child: img_index == 1
                ? Image.asset(
                    "assets/icons8-dove-64.png",
                    scale: 1,
                    color: colors,
                  )
                : img_index == 2
                    ? Image.asset(
                        "assets/icons8-peace-symbol-64.png",
                        scale: 1,
                        color: colors,
                      )
                    : img_index == 3
                        ? Image.asset(
                            "assets/hobby..jpg",
                            scale: 1,
                          )
                        : img_index == 4
                            ? Image.asset(
                                "assets/nature..jpg",
                                scale: 1,
                              )
                            : Image.asset(
                                "assets/icons8-skydiving-16.png",
                                scale: 1,
                                color: colors,
                              ),
          ),
        ),
      ),
    );
  }
}
