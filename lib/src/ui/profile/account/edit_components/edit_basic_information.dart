import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:polec/src/ui/profile/account/components/profile_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/gender_nav_bar.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text.dart';
import 'package:polec/theme/app_colors.dart';

class EditBasicInformation extends StatefulWidget {
  EditBasicInformation({
    super.key,
    required this.emailController,
    required this.nameController,
    required this.surnameController,
    required this.phoneController,
    required this.streetController,
    required this.sityController,
    required this.postCodeController,
    required this.peselController,
    required this.dateOfBirthController,
  });
  final TextEditingController emailController;
  final TextEditingController nameController;
  final TextEditingController surnameController;
  final TextEditingController phoneController;
  final TextEditingController streetController;
  final TextEditingController sityController;
  final TextEditingController postCodeController;
  final TextEditingController peselController;
  final TextEditingController dateOfBirthController;

  @override
  State<EditBasicInformation> createState() => _EditBasicInformationState();
}

class _EditBasicInformationState extends State<EditBasicInformation> {
  CountryCode _countryCode = CountryCode(code: 'PL', dialCode: '+48');
  DateTime _dateTime = DateTime.now();

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
          controller: widget.emailController,
          keyboardType: TextInputType.emailAddress,
          validatorRegExp: r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}',
          errorMessage: 'Enter correct Email',
        ),

        // ProfileTextField(
        //   placeholder: 'Email',
        //   controller: widget.emailController,
        //   keyboardType: TextInputType.emailAddress,
        // ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: TitleTextField(
                text: 'Name/names',
                placeholder: 'Name/names',
                controller: widget.nameController,
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
                controller: widget.surnameController,
                validatorRegExp: r'^[a-z A-Z]+$',
                errorMessage: 'Enter correct surname',
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        const TitleTextWidget(
          text: 'PESEL',
        ),
        ProfileTextField(
          placeholder: 'XXXXXXXXXXX',
          controller: widget.peselController,
          keyboardType: TextInputType.phone,
          validatorRegExp: r'^\d\d\d\d\d\d\d\d\d\d\d+$',
          errorMessage: 'Enter correct PESEL. For example, XXXXXXXXXXX',
        ),
        const SizedBox(height: 10),
        const TitleTextWidget(
          text: 'Phone',
        ),
        ProfileTextField(
          placeholder: 'XXXXXXXXXXX',
          controller: widget.phoneController,
          keyboardType: TextInputType.phone,
          validatorRegExp: r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
          errorMessage: 'Enter correct phone number',
          prefix: CountryCodePicker(
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
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         const TitleTextWidget(
        //           text: 'Phone',
        //         ),
        //         Container(
        //           width: 60,
        //           child: ProfileTextField(
        //             placeholder: 'Phone',
        //             keyboardType: TextInputType.phone,
        //             validatorRegExp: '',
        //             errorMessage: '',
        //           ),
        //         ),
        //       ],
        //     ),
        //     const SizedBox(width: 10),
        //     Expanded(
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           ProfileTextField(
        //             placeholder: '666 666 666',
        //             controller: widget.phoneController,
        //             keyboardType: TextInputType.phone,
        //             validatorRegExp: '',
        //             errorMessage: '',
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: TitleTextField(
                text: 'Street and number',
                placeholder: 'Street and number',
                controller: widget.streetController,
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
                controller: widget.sityController,
                validatorRegExp: r'^[a-z A-Z]+$',
                errorMessage: 'Enter correct sity',
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: TitleTextField(
                text: 'Post code',
                placeholder: 'XX-XXX',
                controller: widget.postCodeController,
                validatorRegExp: r'^\d\d-\d\d\d+$',
                errorMessage: 'Enter correct code. For example, XX-XXX',
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TitleTextWidget(
                    text: 'Gender',
                  ),
                  GenderNavBar(),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const TitleTextWidget(
          text: 'Date of birth',
        ),
        Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: CupertinoButton(
                color: Colors.transparent,
                padding: EdgeInsets.all(0),
                child: const Icon(
                  Icons.calendar_month_rounded,
                  color: Colors.black,
                ),
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1920),
                    lastDate: DateTime(2030),
                  ).then((date) {
                    setState(() {
                      _dateTime = date!;
                    });
                  });
                },
              ),
            ),
            Text(
              DateFormat('yyyy/MM/dd')
                  .format(DateTime.parse(_dateTime.toString())),
              // _dateTime.toString(),
            ),
          ],
        )
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Expanded(
        //       child: TitleTextField(
        //         text: 'Date of birth',
        //         placeholder: '21 february 1993',
        //         controller: widget.dateOfBirthController,
        //         validatorRegExp: '',
        //         errorMessage: '',
        //       ),
        //     ),
        //     const SizedBox(width: 10),
        //     Expanded(
        //       child: Container(),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
