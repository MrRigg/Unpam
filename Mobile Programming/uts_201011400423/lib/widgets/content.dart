import 'dart:math';

import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  CardContent({required this.subTitle});
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
          Random().nextInt(255)),
      child: Text(subTitle),
    );
  }
}
