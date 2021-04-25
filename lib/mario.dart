import 'dart:ui';

import "package:flutter/material.dart";

class MyMario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      child: Image.asset("lib/images/standing.png"),
    );
  }
}
