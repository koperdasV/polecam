import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/profile/components/nav_bar/navigation_bar.dart';
import 'package:polec/src/ui/profile/components/profile_app_bar.dart';

import '../../../ui/profile/account/cubit/account_cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountCubit, AccountEditState>(
      builder: (context, state) {
        final editing = state.editing;

        return CupertinoPageScaffold(
          child: Column(
            children: [
              ProfileAppBar(
                editing: editing,
              ),
              const ProfileNavigationBar(),
            ],
          ),
        );
      },
    );
  }
}
