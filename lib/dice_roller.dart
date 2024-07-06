import 'package:flutter/material.dart';
import 'dart:math';

final randomObj = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var currentDiceNumber = 2;
  void rollDice() {
    setState(() {
      currentDiceNumber = randomObj.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/$currentDiceNumber.png',
          width: 150,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 22,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
