import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/level/components/footer_text.dart';
import 'package:polec/src/ui/profile/level/components/lvl_box.dart';
import 'package:polec/src/ui/profile/level/components/title_level.dart';
import 'package:polec/theme/app_colors.dart';

class LevelWidget extends StatelessWidget {
  const LevelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleLevelWidget(
              title: 'Actual level',
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
            const TitleLevelWidget(
              title: 'Get the next level',
            ),
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView.builder(
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
                                fontWeight: FontWeight.w900,
                                fontSize: 12,
                                color: AppColor.titleColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const SizedBox(
                        child: LinearProgressIndicator(
                          value: 0.4,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.blue,
                          ),
                          backgroundColor: AppColors.progressIndicatorBg,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const FooterText(
              title: 'By unlocking levels, you get bigger discounts, you can',
            ),
            const FooterText(
              title:
                  'Recommend more and you get more return cash to your account!',
            ),
            const SizedBox(height: 20),
            const TitleLevelWidget(
              title: 'Level 4:',
            ),
            const SizedBox(height: 20),
            const FooterText(
              title: '*additional 0.5% discount for all Merchants',
            ),
            const FooterText(
              title: '*possibility of recommending 5 friends a day',
            ),
          ],
        ),
      ),
    );
  }
}
