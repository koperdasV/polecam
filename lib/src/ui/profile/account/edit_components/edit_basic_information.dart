import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/common/models/user_preferences.dart';
import 'package:polec/src/ui/profile/account/edit_components/gender_nav_bar.dart';
import 'package:polec/src/ui/profile/account/components/profile_text_field.dart';

class EditBasicInformation extends StatefulWidget {
  const EditBasicInformation({super.key});

  @override
  State<EditBasicInformation> createState() => _EditBasicInformationState();
}

class _EditBasicInformationState extends State<EditBasicInformation> {
  @override
  Widget build(BuildContext context) {
    final titleTextStyle = TextStyle(
      fontSize: 14,
      color: AppColor.titleColor,
      fontWeight: FontWeight.normal,
    );
   
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            'e-mail',
            style: titleTextStyle,
          ),
        ),
        const ProfileTextField(
          placeholder: 'Email',
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Name/names',
                      style: titleTextStyle,
                    ),
                  ),
                  const ProfileTextField(
                    placeholder: 'Name/names',
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Surname',
                      style: titleTextStyle,
                    ),
                  ),
                  const ProfileTextField(
                    placeholder: 'Surname',
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            'PESEL',
            style: titleTextStyle,
          ),
        ),
        const ProfileTextField(
          placeholder: 'XXXXXXXXXXX',
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'Phone',
                    style: titleTextStyle,
                  ),
                ),
                Container(
                  width: 60,
                  child: const ProfileTextField(
                    placeholder: 'Phone',
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ProfileTextField(
                    placeholder: '666 666 666',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Street and number',
                      style: titleTextStyle,
                    ),
                  ),
                  const ProfileTextField(
                    placeholder: 'Street and number',
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Sity',
                      style: titleTextStyle,
                    ),
                  ),
                  const ProfileTextField(
                    placeholder: 'Sity',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Post code',
                      style: titleTextStyle,
                    ),
                  ),
                  const ProfileTextField(
                    placeholder: 'XX-XXX',
                  ),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Gender',
                      style: titleTextStyle,
                    ),
                  ),
                  const GenderNavBar(),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Date of birth',
                      style: titleTextStyle,
                    ),
                  ),
                  const ProfileTextField(
                    placeholder: '21 february 1993',
                  ),
                ],
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
