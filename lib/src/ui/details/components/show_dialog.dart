import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({
    super.key,
    required this.child,
    this.height,
  });

  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CupertinoButton(
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 36,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: child,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
