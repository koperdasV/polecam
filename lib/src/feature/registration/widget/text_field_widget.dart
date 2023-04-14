import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/src/feature/registration/widget/custom_text_field.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  CountryCode _countryCode = CountryCode(code: 'PL', dialCode: '+48');

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: _nameController,
          placeholder: 'Name',
          keyboardType: TextInputType.name,
          validatorRegExp: r'^[a-z A-Z]+$',
          errorMessage: 'Enter correct name',
        ),
        CustomTextField(
          controller: _emailController,
          placeholder: 'Email',
          keyboardType: TextInputType.emailAddress,
          validatorRegExp: r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}',
          errorMessage: 'Enter correct Email',
        ),
        CustomTextField(
          controller: _phoneController,
          placeholder: 'Phone number',
          keyboardType: TextInputType.phone,
          validatorRegExp: r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
          errorMessage: 'Enter correct phone number',
        ),
      ],
    );
  }
}
