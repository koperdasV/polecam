import 'package:flutter/cupertino.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: 140,
        child: Center(
          child: Text(
            'Selected Segment: Contact',
            style: TextStyle(color: CupertinoColors.activeBlue),
          ),
        ),
      ),
    );
  }
}
