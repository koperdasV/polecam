import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/components/nav_bar/navigation_bar.dart';
import 'package:polec/src/ui/profile/components/profile_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: const [
          ProfileAppBar(),
          ProfileNavigationBar(),
        ],
      ),
    );
  }
}
