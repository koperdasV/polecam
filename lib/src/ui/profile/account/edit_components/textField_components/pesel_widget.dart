import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/account/components/profile_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text.dart';

class PeselWidget extends StatelessWidget {
  const PeselWidget({
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
          text: 'PESEL',
        ),
        ProfileTextField(
          placeholder: 'XXXXXXXXXXX',
          controller: controller,
          keyboardType: TextInputType.phone,
          validatorRegExp: r'^\d\d\d\d\d\d\d\d\d\d\d+$',
          errorMessage: 'Enter correct PESEL. For example, XXXXXXXXXXX',
        ),
      ],
    );
  }
}
