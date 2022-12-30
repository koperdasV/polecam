import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text_field.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
    required this.nameController,
    required this.surnameController,
  });

  final TextEditingController nameController;
  final TextEditingController surnameController;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: TitleTextField(
            text: 'Name/names',
            placeholder: 'Name/names',
            controller: nameController,
            validatorRegExp: r'^[a-z A-Z]+$',
            errorMessage: 'Enter correct name',
            keyboardType: TextInputType.name,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TitleTextField(
            text: 'Surname',
            placeholder: 'Surname',
            controller: surnameController,
            validatorRegExp: r'^[a-z A-Z]+$',
            errorMessage: 'Enter correct surname',
          ),
        )
      ],
    );
  }
}
