import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/account/components/profile_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/gender_nav_bar.dart';
import 'package:polec/src/ui/profile/account/edit_components/titile_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text.dart';

class EditBasicInformation extends StatefulWidget {
  const EditBasicInformation({super.key});

  @override
  State<EditBasicInformation> createState() => _EditBasicInformationState();
}

class _EditBasicInformationState extends State<EditBasicInformation> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final phoneController = TextEditingController();
  final streetController = TextEditingController();
  final sityController = TextEditingController();
  final postCodeController = TextEditingController();
  final peselController = TextEditingController();
  final dateOfBirthController = TextEditingController();

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
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: TitleTextField(
                text: 'Name/names',
                placeholder: 'Name/names',
                controller: nameController,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TitleTextField(
                text: 'Surname',
                placeholder: 'Surname',
                controller: surnameController,
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
          controller: peselController,
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleTextWidget(
                  text: 'Phone',
                ),
                Container(
                  width: 60,
                  child: const ProfileTextField(
                    placeholder: 'Phone',
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileTextField(
                    placeholder: '666 666 666',
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                  ),
                ],
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
                text: 'Street and number',
                placeholder: 'Street and number',
                controller: streetController,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TitleTextField(
                text: 'Sity',
                placeholder: 'Sity',
                controller: sityController,
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
                controller: postCodeController,
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: TitleTextField(
                text: 'Date of birth',
                placeholder: '21 february 1993',
                controller: dateOfBirthController,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ],
    );
  }
}
