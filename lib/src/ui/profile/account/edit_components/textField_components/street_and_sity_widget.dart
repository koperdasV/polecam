import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text_field.dart';

class StreetAndSityWidget extends StatelessWidget {
  const StreetAndSityWidget({
    super.key,
    required this.streetController,
    required this.sityController,
  });

  final TextEditingController streetController;
  final TextEditingController sityController;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: TitleTextField(
            text: 'Street and number',
            placeholder: 'Street and number',
            controller: streetController,
            keyboardType: TextInputType.streetAddress,
            validatorRegExp: r'^[a-z A-Z]+$',
            errorMessage: 'Enter correct street and number',
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TitleTextField(
            text: 'Sity',
            placeholder: 'Sity',
            controller: sityController,
            validatorRegExp: r'^[a-z A-Z]+$',
            errorMessage: 'Enter correct sity',
          ),
        )
      ],
    );
  }
}
