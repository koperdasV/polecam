import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/account/bloc/account_bloc.dart';
import 'package:polec/src/ui/profile/account/edit_profile_widget.dart';
import 'package:polec/src/ui/profile/components/nav_bar/navigation_bar.dart';

class ProfileAppBar extends StatefulWidget {
  const ProfileAppBar({super.key});

  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
      if (state.status == AccountStateStatus.failure &&
          state.errorMessage.isNotEmpty) {
        context.showErrorBar<String>(
          content: Text(state.errorMessage),
        );
      }
      if (state.status == AccountStateStatus.loading) {
        return const Center(
          child: CupertinoActivityIndicator(),
        );
      }
      if (state.status == AccountStateStatus.success) {
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      state.accountModel.avatar.toString(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${state.accountModel.firstName} ${state.accountModel.lastName}',
                        style: TextStyle(
                          color: AppColor.titleColor,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        state.accountModel.email.toString(),
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
                    setState(changeEditWidget);
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
      } else {
        return const Text('No data');
      }
    });
  }

  void changeEditWidget() {
    detailWidget.update(Detail.account, (value) => const EditProfileWidget());
  }
}
