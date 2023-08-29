import 'package:flutter/material.dart';
import 'dart:math';

final randNum=Random();


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceNum=randNum.nextInt(6)+1;
  void rollDice() {
    setState(() {
      activeDiceNum=randNum.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceNum.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 0, 0, 0),
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
            padding: const EdgeInsets.all(20),
          ),
          child: const Text(
            "Roll Dice",
          ),
        )
      ],
    );
  }
}
