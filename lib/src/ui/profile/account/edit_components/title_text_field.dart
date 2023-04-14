import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/account/components/profile_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required this.text,
    required this.placeholder,
    required this.controller,
    this.keyboardType,
    required this.validatorRegExp,
    required this.errorMessage,
  });

  final String text;
  final String placeholder;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String validatorRegExp;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleTextWidget(
          text: text,
        ),
        ProfileTextField(
          placeholder: placeholder,
          controller: controller,
          keyboardType: keyboardType,
          validatorRegExp: validatorRegExp,
          errorMessage: errorMessage,
        ),
      ],
    );
  }
}
