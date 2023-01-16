import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/profile/provider/profile_provider.dart';
import 'package:polec/src/ui/profile/account/bloc/account_bloc.dart';
import 'package:polec/src/ui/profile/account/cubit/account_cubit.dart';
import 'package:polec/src/ui/profile/components/avatar.dart';

class ProfileAppBar extends StatefulWidget {
  const ProfileAppBar({
    super.key,
  });
  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<SlidingBarProvider>().markerVisible;
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        if (state.status == AccountStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
        if (state.status == AccountStateStatus.loading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        if (state.status == AccountStateStatus.success) {
          return ColoredBox(
            color: AppColor.navBarColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Avatar(accountModel: state.accountModel),
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
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                state.accountModel.email.toString(),
                                style: TextStyle(
                                  color: AppColor.subTitleColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
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
                              padding: const EdgeInsets.all(5),
                              onPressed: () {
                                context.read<AccountCubit>().change();
                              },
                              child: Icon(
                                state.editing ? Icons.close : Icons.mode,
                                color: AppColor.subTitleColor,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    width: double.infinity,
                    height: 1.5,
                    color: Colors.grey.shade300,
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: Text(state.errorMessage),
          );
        }
      },
    );
  }
}
