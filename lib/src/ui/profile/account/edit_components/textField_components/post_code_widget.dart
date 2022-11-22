import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text_field.dart';

class PostCodeWidget extends StatelessWidget {
  const PostCodeWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: TitleTextField(
            text: 'Post code',
            placeholder: 'XX-XXX',
            keyboardType: TextInputType.phone,
            controller: controller,
            validatorRegExp: r'^\d\d-\d\d\d+$',
            errorMessage: 'Enter correct code. For example, XX-XXX',
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }
}
