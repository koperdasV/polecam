// ignore_for_file: avoid_redundant_argument_values

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:polec/src/ui/profile/account/components/profile_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text.dart';

class PhoneWidget extends StatefulWidget {
  const PhoneWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  State<PhoneWidget> createState() => _PhoneWidgetState();
}

class _PhoneWidgetState extends State<PhoneWidget> {
  // ignore: unused_field
  CountryCode _countryCode = CountryCode(code: 'PL', dialCode: '+48');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleTextWidget(
          text: 'Phone',
        ),
        ProfileTextField(
          placeholder: 'XXXXXXXXXXX',
          controller: widget.controller,
          keyboardType: TextInputType.phone,
          validatorRegExp: r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
          errorMessage: 'Enter correct phone number',
          prefix: SizedBox(
            height: 29,
            child: CountryCodePicker(
              padding: EdgeInsets.zero,
             
              textStyle: const TextStyle(color: Colors.black),
              onChanged: (CountryCode countryCode) {
                setState(
                  () {
                    _countryCode = countryCode;
                  },
                );
              },
              showFlag: false,
              initialSelection: 'PL',
              showCountryOnly: false,
              showOnlyCountryWhenClosed: false,
            ),
          ),
        ),
      ],
    );
  }
}
