import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/profile/provider/profile_provider.dart';
import 'package:polec/src/ui/profile/account/bloc/account_bloc.dart';
import 'package:polec/src/ui/profile/account/cubit/account_cubit.dart';

class ProfileAppBar extends StatefulWidget {
  const ProfileAppBar({
    super.key,
  });
  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<SlidingBarProvider>().markerVisible;
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) {
        if (state.status == AccountStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      child: BlocBuilder<AccountBloc, AccountState>(
        builder: (context, state) {
          if (state.status == AccountStateStatus.loading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          } else {
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
                  BlocBuilder<AccountCubit, AccountEditState>(
                    builder: (context, state) {
                      return Visibility(
                        visible: provider,
                        child: CupertinoButton(
                          onPressed: () {
                            setState(() {
                              click = !click;
                            });
                            (click == false)
                                ? context
                                    .read<AccountCubit>()
                                    .editingAcc(editingAccount: false)
                                : context
                                    .read<AccountCubit>()
                                    .editingAcc(editingAccount: true);
                          },
                          child: Icon(
                            (click == false) ? Icons.mode : Icons.close,
                            color: AppColor.subTitleColor,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
