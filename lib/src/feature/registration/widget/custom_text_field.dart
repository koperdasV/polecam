import 'package:flutter/cupertino.dart';
import 'package:polec/theme/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.keyboardType,
    required this.placeholder,
    required this.validatorRegExp,
    required this.errorMessage,
    this.prefix,
  });

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String placeholder;
  final Widget? prefix;
  final String validatorRegExp;
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return CupertinoTextFormFieldRow(
      controller: controller,
      keyboardType: keyboardType,
      placeholder: placeholder,
      prefix: prefix,
      placeholderStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        color: CupertinoColors.placeholderText,
      ),
      padding: const EdgeInsets.only(bottom: 10, top: 20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.greyDark),
        ),
      ),
      validator: (value) {
        //r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$'
        //r'[0-9]+[,.]{0,1}[0-9]*'
        if (value!.isEmpty || !RegExp(validatorRegExp).hasMatch(value)) {
          return errorMessage;
        } else {
          return null;
        }
      },
    );
  }
}
