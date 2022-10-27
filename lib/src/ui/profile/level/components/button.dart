import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Icon(
        Icons.mode_edit,
        color: Colors.black,
      ),
      onPressed: () {},
    );
  }
}
