import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:polec/theme/app_colors.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({super.key, required this.placeholder});
 final String placeholder;
  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
              decoration: BoxDecoration(
                color: AppColors.bgAccountPage,
                borderRadius: BorderRadius.circular(10),
              ),
              placeholder: placeholder,
            );
  }
}
