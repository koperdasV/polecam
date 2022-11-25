import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text_field.dart';

class StreetAndCityWidget extends StatelessWidget {
  const StreetAndCityWidget({
    super.key,
    required this.streetController,
    required this.cityController,
  });

  final TextEditingController streetController;
  final TextEditingController cityController;

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
            validatorRegExp: r'^[a-z A-Z][0-9]+$',
            errorMessage: 'Enter correct street and number',
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TitleTextField(
            text: 'City',
            placeholder: 'City',
            controller: cityController,
            validatorRegExp: r'^[a-z A-Z]+$',
            errorMessage: 'Enter correct city',
          ),
        )
      ],
    );
  }
}
