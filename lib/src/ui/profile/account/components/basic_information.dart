import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/common/models/user_preferences.dart';
import 'package:polec/src/ui/profile/account/bloc/account_bloc.dart';

class BasicInformationWidget extends StatelessWidget {
  const BasicInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final accountModel = context.read<AccountBloc>().state.accountModel;
    if (accountModel == null) return const SizedBox.shrink();

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
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
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
                  '${accountModel.firstName} ${accountModel.lastName}',
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
                  accountModel.phone.toString(),
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
                  '${accountModel.street}, ${accountModel.sity}',
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
                  accountModel.dateOfBirth.toString(),
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
                  accountModel.pesel.toString(),
                  style: subtitleTextStyle,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
