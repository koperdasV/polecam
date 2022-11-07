import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:polec/src/ui/profile/account/components/profile_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required this.text,
    required this.placeholder,
    required this.controller,
    this.keyboardType,
  });

  final String text;
  final String placeholder;
  final TextEditingController controller;
  final TextInputType? keyboardType;

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
        ),
      ],
    );
  }
}
