import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Polecane dla Ciebie',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Text(
            'Wszystkie',
            style: TextStyle(
              fontSize: 14,
              color: Colors.red,
              fontWeight: FontWeight.normal,
            ),
          ),
        )
      ],
    );
  }
}