import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/common/models/user_preferences.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/profile/account/account_widget.dart';
import 'package:polec/src/ui/profile/account/components/profile_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/edit_basic_information.dart';
import 'package:polec/src/ui/profile/account/edit_components/gender_nav_bar.dart';
import 'package:polec/src/ui/profile/components/nav_bar/navigation_bar.dart';
import 'package:polec/theme/app_colors.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({super.key});

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
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
            const EditBasicInformation(),
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
              onPressed: () {
                setState(() {
                  changeEditWidget();
                });
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  void changeEditWidget() {
    detailWidget.update(Detail.account, (value) => const AccountWidget());
  }
}
