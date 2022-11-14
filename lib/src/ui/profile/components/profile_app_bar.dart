import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/common/models/user_preferences.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/profile/account/account_widget.dart';
import 'package:polec/src/ui/profile/account/bloc/account_bloc.dart';
import 'package:polec/src/ui/profile/account/edit_profile_widget.dart';
import 'package:polec/src/ui/profile/components/nav_bar/navigation_bar.dart';
import 'package:polec/src/ui/profile/level/level_widget.dart';
import 'package:polec/src/ui/profile/statistics/statistics_widget.dart';
import 'package:polec/theme/app_colors.dart';

class ProfileAppBar extends StatefulWidget {
  const ProfileAppBar({super.key});

  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  final user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    final accountModel = context.read<AccountBloc>().state.accountModel;
    //  if (accountModel == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey.shade400,
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${accountModel?.firstName} ${user.surname}',
                    style: TextStyle(
                      color: AppColor.titleColor,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    user.email,
                    style: TextStyle(
                      color: AppColor.subTitleColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Visibility(
            visible: true,
            child: CupertinoButton(
              onPressed: () {
                //    Navigator.push(
                //   context,
                //   CupertinoPageRoute(
                //     builder: (context) => const EditProfilePage(),
                //   ),
                // );
                setState(() {
                  changeEditWidget();
                });
              },
              child: Icon(
                Icons.mode,
                color: AppColor.subTitleColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void changeEditWidget() {
    detailWidget.update(Detail.account, (value) => const EditProfileWidget());
  }
}
