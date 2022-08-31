import 'package:flutter/material.dart';
import 'package:calculator_app/calculator_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '0',
                  style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          GridView.count(
            padding: const EdgeInsets.all(0.0),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: <Widget>[
              CalculatorButton(
                backroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: 'C',
              ),
              CalculatorButton(
                backroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '+/-',
              ),
              CalculatorButton(
                backroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '%',
              ),
              CalculatorButton.Icon(
                backroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'Backspace',
                icon: Icons.backspace,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
