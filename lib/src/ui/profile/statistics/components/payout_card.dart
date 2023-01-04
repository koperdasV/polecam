import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

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
      child: Stack(
        children: [
          Container(
            height: 130,
            width: 130,
            decoration: decoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      summaryText,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
