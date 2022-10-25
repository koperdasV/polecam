import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/components/lvl_box.dart';
import 'package:polec/theme/app_colors.dart';

class LevelWidget extends StatefulWidget {
  const LevelWidget({super.key});

  @override
  State<LevelWidget> createState() => _LevelWidgetState();
}

class _LevelWidgetState extends State<LevelWidget> {
  @override
  Widget build(BuildContext context) {

    return Container();
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 16),
    //   child: Expanded(
    //     child: ListView(
    //        scrollDirection: Axis.vertical,
    //       shrinkWrap: true,
    //       children: [
    //         Text(
    //           'Actual level',
    //           style: TextStyle(
    //             fontSize: 16,
    //             color: AppColor.titleColor,
    //           ),
    //         ),
    //         Row(
    //           children: const [
    //             LvlBox(
    //               text: '3',
    //               gradientStart: AppColors.gradientStartActive,
    //               gradientEnd: AppColors.gradientEndActive,
    //             ),
    //             Padding(
    //               padding: EdgeInsets.symmetric(horizontal: 10),
    //               child: LinearProgressIndicator(
    //                 value: 40,
    //               ),
    //             ),
    //             LvlBox(
    //               text: '4',
    //               gradientStart: AppColors.gradientStartNonActive,
    //               gradientEnd: AppColors.gradientEndNonActive,
    //             ),
    //           ],
    //         ),
    //         Text(
    //           'Get the next level',
    //           style: TextStyle(
    //             fontSize: 16,
    //             color: AppColor.titleColor,
    //           ),
    //         ),
    //         Column(),
    //         Text(''),
    //         Text(
    //           'Level 4',
    //           style: TextStyle(
    //             fontSize: 16,
    //             color: AppColor.titleColor,
    //           ),
    //         ),
    //         Text(''),
    //       ],
    //     ),
    //   ),
    // );
  }
}
/*
class LevelWidget extends StatelessWidget {
  const LevelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Expanded(
        child: ListView(
           scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Text(
              'Actual level',
              style: TextStyle(
                fontSize: 16,
                color: AppColor.titleColor,
              ),
            ),
            Row(
              children: const [
                LvlBox(
                  text: '3',
                  gradientStart: AppColors.gradientStartActive,
                  gradientEnd: AppColors.gradientEndActive,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: LinearProgressIndicator(
                    value: 40,
                  ),
                ),
                LvlBox(
                  text: '4',
                  gradientStart: AppColors.gradientStartNonActive,
                  gradientEnd: AppColors.gradientEndNonActive,
                ),
              ],
            ),
            Text(
              'Get the next level',
              style: TextStyle(
                fontSize: 16,
                color: AppColor.titleColor,
              ),
            ),
            Column(),
            Text(''),
            Text(
              'Level 4',
              style: TextStyle(
                fontSize: 16,
                color: AppColor.titleColor,
              ),
            ),
            Text(''),
          ],
        ),
      ),
    );
  }
}
*/