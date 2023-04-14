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
    this.obscureText = false,
    this.validator,
  });

  final String placeholder;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String validatorRegExp;
  final String errorMessage;
  final Widget? prefix;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextFormFieldRow(
      obscureText: obscureText,
      padding: EdgeInsets.zero,
      placeholder: placeholder,
      cursorHeight: 14,
      placeholderStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.editPlaceholderAcc,
        fontSize: 14,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.2,
      ),
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        leadingDistribution: TextLeadingDistribution.even,
        height: 1.2,
      ),
      controller: controller,
      keyboardType: keyboardType,
      prefix: prefix,
      decoration: BoxDecoration(
        color: AppColors.bgAccountPage,
        borderRadius: BorderRadius.circular(10),
      ),
      validator: (value) {
        if (value!.isNotEmpty && !RegExp(validatorRegExp).hasMatch(value)) {
          return errorMessage;
        } else {
          return null;
        }
      },
    );
  }
}
