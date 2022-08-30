import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Color backroundColor;
  final Color foregroundColor;
  final String text;

  const CalculatorButton({
    required this.backroundColor,
    required this.foregroundColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backroundColor,
      child: Center(
        child: Text(
          text,
          style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(color: foregroundColor),
        ),
      ),
    );
  }
}
