import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/profile/account/components/basic_information.dart';
import 'package:polec/theme/app_colors.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
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
            const BasicInformationWidget(),
            const SizedBox(height: 20),
            Text(
              'Payment',
              style: textStyle,
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Account number',
                  style: titleTextStyle,
                ),
                const SizedBox(height: 5),
                Text(
                  'XX XXXX XXXX XXXX AAAA',
                  style: subtitleTextStyle,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Connetcion with bank account',
                  style: textStyle,
                ),
                const SizedBox(height: 10),
                Text(
                  'Day to reconnect to the account 61',
                  style: titleTextStyle,
                ),
              ],
            ),
            const SizedBox(height: 20),
            RecommendedButton(
              textButton: 'Reconnect now',
              gradient: const LinearGradient(
                colors: [
                  AppColors.gradientStartActive,
                  AppColors.gradientEndActive,
                ],
              ),
              imageColor: Colors.white,
              textColor: Colors.white,
              onPressed: onPressed,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
