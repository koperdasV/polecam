import 'package:flutter/cupertino.dart';

class OpenWidget extends StatelessWidget {
  const OpenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: 140,
        child: Center(
          child: Text(
            'Selected Segment: Open',
            style: TextStyle(color: CupertinoColors.activeBlue),
          ),
        ),
      ),
    );
  }
}
