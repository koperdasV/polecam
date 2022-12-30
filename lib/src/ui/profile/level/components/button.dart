import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: const Icon(
        Icons.mode_edit,
        color: Colors.black,
      ),
      onPressed: () {},
    );
  }
}
