import 'dart:math';
import 'dart:ui';
import "package:flutter/material.dart";

class MyMario extends StatelessWidget {
  final direction;
  final midrun;
  final size;

  MyMario({this.direction, this.midrun, this.size});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: size,
        height: size,
        child: midrun
            ? Image.asset("lib/images/standing.png")
            : Image.asset("lib/images/running.png"),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: size,
          height: size,
          child: midrun
              ? Image.asset("lib/images/standing.png")
              : Image.asset("lib/images/running.png"),
        ),
      );
    }
  }
}
