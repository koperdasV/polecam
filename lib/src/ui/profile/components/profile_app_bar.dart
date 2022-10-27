import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/common/models/user_preferences.dart';
import 'package:polec/src/ui/profile/account/edit_profile_page.dart';
import 'package:polec/src/ui/profile/account/edit_profile_widget.dart';
import 'package:polec/src/ui/profile/components/nav_bar/navigation_bar.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
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
                    '${user.name} ${user.surname}',
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
              onPressed: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const EditProfilePage(),
                ),
              ),
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
}

// <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24.003" viewBox="0 0 24 24.003">
//   <g id="baseline-border_color-24px" transform="translate(0 0.003)">
//     <path id="Path_2211" data-name="Path 2211" d="M17.75,7,14,3.25l-10,10V17H7.75Zm2.96-2.96a1,1,0,0,0,0-1.41L18.37.29a1,1,0,0,0-1.41,0L15,2.25,18.75,6Z" fill="#9fa2b1"/>
//     <path id="Path_2212" data-name="Path 2212" d="M0,0H24V24H0Z" fill="none"/>
//     <path id="Path_2213" data-name="Path 2213" d="M0,20H24v4H0Z" fill="#9fa2b1"/>
//   </g>
// </svg>
