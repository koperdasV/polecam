import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/resourses/app_images.dart';
import 'package:polec/src/ui/details/components/image_widget.dart';
import 'package:polec/src/ui/details/components/navigation_bar.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/details/components/recommendations.dart';
import 'package:polec/src/ui/details/components/show_dialog.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';
import 'package:polec/theme/app_colors.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key, required this.detailModel});
  final DetailModel detailModel;

  @override
  Widget build(BuildContext context) {
    final amountParse = (detailModel.regularFee) * 100;
    final percent = amountParse.toInt();
    final getRegularFee = percent + 1;

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageWidget(
                image: detailModel.image,
                regularFee: percent,
                detailModel: detailModel,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  detailModel.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.7,
                  ),
                ),
              ),
              Text(
                'Recommend by: ${detailModel.recommendations[0].name} ${detailModel.recommendations[0].surname}',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColor.subTitleColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.ideographic,
                children: [
                  Text(
                    'Your discount:',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.subTitleColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '$percent %',
                    style: const TextStyle(
                      fontSize: 20,
                      color: AppColors.pecent,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.7,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => ShowDialog(
                    height: 270,
                    child: Column(
                      children: [
                        Text(
                          'Recommend this place 3 friends',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: AppColor.titleColor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'To get an additional 1% discount successfully recomend this place to 3 friends',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.titleColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          '*successful recommendation is one that ended with a transaction.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.titleColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                child: Container(
                  height: 30,
                  decoration: AppColor.getColorDetails,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Text(
                            'Get ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Text(
                          '$getRegularFee%',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const CustomNavigationBar(),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RecommendedButton(
            image: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset(
                AppImages.logo,
                color: Colors.white,
              ),
            ),
            textButton: 'Recommend to friend',
            gradient: const LinearGradient(
              colors: [
                AppColors.gradientStart,
                AppColors.gradientEnd,
              ],
            ),
            textColor: Colors.white,
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Recommendations',
            style: TextStyle(
              fontSize: 17,
              color: AppColor.titleColor,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.9,
            ),
          ),
        ),
        RecomendationsWidget(
          detailModel: detailModel,
        ),
      ],
    );
  }
}
