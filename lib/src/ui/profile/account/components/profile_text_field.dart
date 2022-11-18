import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/theme/app_colors.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    super.key,
    required this.placeholder,
    this.controller,
    this.keyboardType,
    required this.validatorRegExp,
    required this.errorMessage,
    this.prefix,
  });

  final String placeholder;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String validatorRegExp;
  final String errorMessage;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextFormFieldRow(
      padding: EdgeInsets.all(0),
      placeholder: placeholder,
      controller: controller,
      keyboardType: keyboardType,
      prefix: prefix,
      decoration: BoxDecoration(
        color: AppColors.bgAccountPage,
        borderRadius: BorderRadius.circular(10),
      ),
      validator: (value) {
        if (value!.isEmpty || !RegExp(validatorRegExp).hasMatch(value)) {
          return errorMessage;
        } else {
          return null;
        }
      },
    );

    // return CupertinoTextField(
    //   controller: controller,
    //   keyboardType: keyboardType,
    //   decoration: BoxDecoration(
    //     color: AppColors.bgAccountPage,
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   placeholder: placeholder,
    // );
  }
}
