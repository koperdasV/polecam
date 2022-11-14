import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/common/models/user_preferences.dart';
import 'package:polec/src/ui/profile/account/bloc/account_bloc.dart';
import 'package:polec/src/ui/profile/account/edit_profile_widget.dart';
import 'package:polec/src/ui/profile/components/nav_bar/navigation_bar.dart';

class ProfileAppBar extends StatefulWidget {
  const ProfileAppBar({super.key});

  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  final user = UserPreferences.myUser;

  @override
  void initState() {
    context.read<AccountBloc>().add(const LoadAccount());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final accountModel = context.read<AccountBloc>().state.accountModel;
    if (accountModel == null) return const SizedBox.shrink();
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    // backgroundColor: Colors.grey.shade400,
                    backgroundImage: AssetImage(
                      accountModel.avatar.toString(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${accountModel.firstName} ${accountModel.lastName}',
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
      },
    );
  }

  void changeEditWidget() {
    detailWidget.update(Detail.account, (value) => const EditProfileWidget());
  }
}
