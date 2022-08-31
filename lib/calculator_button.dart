import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Color backroundColor;
  final Color foregroundColor;
  final String text;
  IconData? icon;

  CalculatorButton({
    required this.backroundColor,
    required this.foregroundColor,
    required this.text,
  });

  CalculatorButton.Icon({
    required this.backroundColor,
    required this.foregroundColor,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backroundColor,
      child: Center(
        child: icon == null
        ? Text(
          text,
          style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(color: foregroundColor),
        )
        : Icon(
            icon,
            color: foregroundColor,
        ),
      ),
    );
  }
}
