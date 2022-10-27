import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/common/models/user_preferences.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/profile/account/components/profile_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/gender_nav_bar.dart';
import 'package:polec/theme/app_colors.dart';

class EditProfileWidget extends StatelessWidget {
  const EditProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    final textStyle = TextStyle(
      fontSize: 18,
      color: AppColor.titleColor,
      fontWeight: FontWeight.bold,
    );
    final titleTextStyle = TextStyle(
      fontSize: 14,
      color: AppColor.titleColor,
      fontWeight: FontWeight.normal,
    );
    final subtitleTextStyle = TextStyle(
      fontSize: 14,
      color: AppColor.subTitleColor,
      fontWeight: FontWeight.normal,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Basic Information',
              style: textStyle,
            ),
            const SizedBox(height: 20),
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
            //////////////////////////////////////////////////////////////
            const SizedBox(height: 20),
            Text(
              'Password',
              style: textStyle,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                'Enter a new password',
                style: titleTextStyle,
              ),
            ),
            const ProfileTextField(
              placeholder: 'Enter a new password',
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                'Confirm new password',
                style: titleTextStyle,
              ),
            ),
            const ProfileTextField(
              placeholder: 'Confirm new password',
            ),
            const SizedBox(height: 20),
            RecommendedButton(
              textButton: 'Save',
              gradient: const LinearGradient(
                colors: [
                  AppColors.gradientStart,
                  AppColors.gradientEnd,
                ],
              ),
              imageColor: Colors.white,
              textColor: Colors.white,
              onPressed: () => Navigator.pop(context),
            ),
           const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
