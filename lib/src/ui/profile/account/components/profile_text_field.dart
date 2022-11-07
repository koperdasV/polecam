import 'package:flutter/cupertino.dart';
import 'package:polec/theme/app_colors.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    super.key,
    required this.placeholder,
    this.controller,
    this.keyboardType,
  });

  final String placeholder;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: BoxDecoration(
        color: AppColors.bgAccountPage,
        borderRadius: BorderRadius.circular(10),
      ),
      placeholder: placeholder,
    );
  }
}
