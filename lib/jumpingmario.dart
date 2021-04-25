import 'dart:math';

import "package:flutter/material.dart";

class JumpingMario extends StatelessWidget {
  final direction;

  JumpingMario({this.direction});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: 60,
        height: 60,
        child: Image.asset("lib/images/jumping.png"),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: 60,
          height: 60,
          child: Image.asset("lib/images/jumping.png"),
        ),
      );
    }
  }
}
