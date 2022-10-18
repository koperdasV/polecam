import 'package:flutter/cupertino.dart';
import 'package:polec/theme/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.keyboardType,
    required this.placeholder,
    this.prefix,

  });

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String placeholder;
  final Widget? prefix;


  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
textCapitalization : TextCapitalization.words,
      prefix: prefix,
      keyboardType: keyboardType,
      controller: controller,
      padding: const EdgeInsets.only(bottom: 20, right: 20, top: 20),
      placeholder: placeholder,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.greyDark),
        ),
      ),
    );
  }
}
