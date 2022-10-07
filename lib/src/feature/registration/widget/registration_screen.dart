import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/src/common/router/routes.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          onPressed: () => const HomeRoute().go(context),
        ),
        middle: Text('RegistrationScreen'),
      ),
      body: Column(
        children: [
          Icon(CupertinoIcons.bell),
          Text('Big text'),
          Text('polec.am'),
          CupertinoTextField(),
          CupertinoTextField(),
          CupertinoTextField(),
          Row(
            children: [
              Checkbox(value: false, onChanged: (value){}),
              Text('Rich text with url to launch'),
            ],
          ),
          CupertinoButton.filled(
            onPressed: () {},
            child: const Text('Enabled'),
          ),
          Text('Rich text with url to launch'),
        ],
      ),
    );
  }
}
