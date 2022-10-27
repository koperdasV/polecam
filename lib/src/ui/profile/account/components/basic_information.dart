import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/common/models/user_preferences.dart';

class BasicInformationWidget extends StatelessWidget {
  const BasicInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    final titleTextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: AppColor.titleColor,
    );
    final subtitleTextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: AppColor.subTitleColor,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name and Surname',
              style: titleTextStyle,
            ),
            const SizedBox(height: 5),
            Text(
              '${user.name} ${user.surname}',
              style: subtitleTextStyle,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Phone',
              style: titleTextStyle,
            ),
            const SizedBox(height: 5),
            Text(
              user.phone,
              style: subtitleTextStyle,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: titleTextStyle,
            ),
            const SizedBox(height: 5),
            Text(
              '${user.street}, ${user.sity}',
              style: subtitleTextStyle,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gender',
              style: titleTextStyle,
            ),
            const SizedBox(height: 5),
            Text(
             'Male',
              style: subtitleTextStyle,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Date of birth',
              style: titleTextStyle,
            ),
            const SizedBox(height: 5),
            Text(
             user.dateOfBirth,
              style: subtitleTextStyle,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PESEL',
              style: titleTextStyle,
            ),
            const SizedBox(height: 5),
            Text(
              user.pesel,
              style: subtitleTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
