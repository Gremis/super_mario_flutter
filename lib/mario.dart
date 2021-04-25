import 'dart:math';
import 'dart:ui';
import "package:flutter/material.dart";

class MyMario extends StatelessWidget {
  final direction;
  final midrun;

  MyMario({this.direction, this.midrun});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: 60,
        height: 60,
        child: midrun
            ? Image.asset("lib/images/standing.png")
            : Image.asset("lib/images/running.png"),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: 60,
          height: 60,
          child: midrun
              ? Image.asset("lib/images/standing.png")
              : Image.asset("lib/images/running.png"),
        ),
      );
    }
  }
}
