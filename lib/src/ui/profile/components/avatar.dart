import 'package:flutter/material.dart';
import 'package:polec/src/ui/profile/account/model/account_model.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.accountModel,
  }) : super(key: key);

  final AccountModel accountModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage(
            accountModel.avatar.toString(),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white.withOpacity(0.8),
              child: const CircleAvatar(
                radius: 9,
                backgroundColor: Color.fromRGBO(0, 122, 255, 0.8),
                child: Text(
                  '3',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
