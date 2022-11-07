import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/account/components/profile_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text.dart';

class EditPassword extends StatelessWidget {
  const EditPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleTextWidget(
          text: 'Enter a new password',
        ),
        ProfileTextField(
          placeholder: 'Enter a new password',
        ),
        SizedBox(height: 10),
        TitleTextWidget(
          text: 'Confirm new password',
        ),
        ProfileTextField(
          placeholder: 'Confirm new password',
        ),
      ],
    );
  }
}
