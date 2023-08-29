import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  @override
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          color1,
          color2,
        ]),
      ),
    );
  }
}
