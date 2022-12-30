import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/account/components/profile_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text.dart';

class EmailWidget extends StatelessWidget {
  const EmailWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleTextWidget(
          text: 'e-mail',
        ),
        ProfileTextField(
          placeholder: 'Email',
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          validatorRegExp: r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}',
          errorMessage: 'Enter correct Email',
        ),
      ],
    );
  }
}
