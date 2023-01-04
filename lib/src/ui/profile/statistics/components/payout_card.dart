import 'package:flutter/material.dart';

class PayoutCard extends StatelessWidget {
  const PayoutCard({
    Key? key,
    required this.titleText,
    required this.decoration,
    required this.summaryText,
  }) : super(key: key);

  final String titleText;
  final String summaryText;
  final Decoration decoration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Container(
          height: 125,
          width: 130,
          decoration: decoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 8, right: 10),
                child: SizedBox(
                  height: 40,
                  child: Text(
                    titleText,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(
                summaryText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                softWrap: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
