import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InActiveButton extends StatelessWidget {
  const InActiveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFd93150),
            Color(0xFFf17088),
            Color(0xFFfc8ca1),
          ],
        ),
      ),
      child: CupertinoButton(
        child: const Text(
          'Inactive Account',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
