import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/components/lvl_box.dart';
import 'package:polec/theme/app_colors.dart';

class LevelWidget extends StatelessWidget {
  const LevelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Text(
              'Actual level',
              style: TextStyle(
                fontSize: 16,
                color: AppColor.titleColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const LvlBox(
                  text: '3',
                  gradientStart: AppColors.gradientStartActive,
                  gradientEnd: AppColors.gradientEndActive,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const LinearProgressIndicator(
                    value: 0.6,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    backgroundColor: Colors.grey,
                  ),
                ),
                const LvlBox(
                  text: '4',
                  gradientStart: AppColors.gradientStartNonActive,
                  gradientEnd: AppColors.gradientEndNonActive,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Get the next level',
              style: TextStyle(
                fontSize: 16,
                color: AppColor.titleColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        text: 'Complete 52 successful recomendatios: ',
                        style: TextStyle(color: AppColor.titleColor),
                        children: <TextSpan>[
                          TextSpan(
                            text: '21/52',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: AppColor.titleColor),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(
                      child: LinearProgressIndicator(
                        value: 0.4,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                        backgroundColor: AppColors.progressIndicatorBg,
                      ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 20),
            Text(
              'By unlocking levels, you get bigger discounts, you can',
              style: TextStyle(
                fontSize: 12,
                color: AppColor.titleColor,
                fontWeight: FontWeight.normal,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              'Recommend more and you get more return cash to your account!',
              style: TextStyle(
                fontSize: 12,
                color: AppColor.titleColor,
                fontWeight: FontWeight.normal,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20),
            Text(
              'Level 4:',
              style: TextStyle(
                fontSize: 16,
                color: AppColor.titleColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '*additional 0.5% discount for all Merchants',
              style: TextStyle(
                fontSize: 12,
                color: AppColor.titleColor,
                fontWeight: FontWeight.normal,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              '*possibility of recommending 5 friends a day',
              style: TextStyle(
                fontSize: 12,
                color: AppColor.titleColor,
                fontWeight: FontWeight.normal,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
