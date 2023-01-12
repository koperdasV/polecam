import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/src/ui/profile/account/edit_components/calendar_widget.dart';
import 'package:polec/src/ui/profile/account/edit_components/gender_nav_bar.dart';
import 'package:polec/src/ui/profile/account/edit_components/textField_components/email_widget.dart';
import 'package:polec/src/ui/profile/account/edit_components/textField_components/name_widget.dart';
import 'package:polec/src/ui/profile/account/edit_components/textField_components/pesel_widget.dart';
import 'package:polec/src/ui/profile/account/edit_components/textField_components/phone_widget.dart';
import 'package:polec/src/ui/profile/account/edit_components/textField_components/post_code_widget.dart';
import 'package:polec/src/ui/profile/account/edit_components/textField_components/street_and_sity_widget.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text.dart';

class EditBasicInformation extends StatefulWidget {
  EditBasicInformation({
    super.key,
    required this.emailController,
    required this.nameController,
    required this.surnameController,
    required this.phoneController,
    required this.streetController,
    required this.cityController,
    required this.postCodeController,
    required this.peselController,
    required this.dateOfBirthController,
  });
  final TextEditingController emailController;
  final TextEditingController nameController;
  final TextEditingController surnameController;
  final TextEditingController phoneController;
  final TextEditingController streetController;
  final TextEditingController cityController;
  final TextEditingController postCodeController;
  final TextEditingController peselController;
  final TextEditingController dateOfBirthController;

  @override
  State<EditBasicInformation> createState() => _EditBasicInformationState();
}

class _EditBasicInformationState extends State<EditBasicInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EmailWidget(controller: widget.emailController),
        const SizedBox(height: 10),
        NameWidget(
          nameController: widget.nameController,
          surnameController: widget.surnameController,
        ),
        const SizedBox(height: 10),
        PeselWidget(controller: widget.peselController),
        const SizedBox(height: 10),
        PhoneWidget(controller: widget.phoneController),
        const SizedBox(height: 10),
        StreetAndCityWidget(
          cityController: widget.cityController,
          streetController: widget.streetController,
        ),
        const SizedBox(height: 10),
        PostCodeWidget(controller: widget.postCodeController),
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
        const CalendarWidget()
      ],
    );
  }
}
