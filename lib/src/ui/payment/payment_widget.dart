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

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({
    super.key,
    required this.detailModel,
  });
  final DetailModel detailModel;

  @override
  Widget build(BuildContext context) {
    final amountParse = (detailModel.regularFee) * 100;
    final regularFeePer = amountParse.toInt();
    final getRegularFee = regularFeePer + 1;
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
                regularFee: regularFeePer,
                detailModel: detailModel,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Thai beef fried rice',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Text(
                'Recommend by: Paweł Woźniak',
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
                    '$regularFeePer %',
                    style: const TextStyle(
                      fontSize: 20,
                      color: AppColors.pecent,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => ShowDialog(
                      height: 250,
                      child: Column(
                        children: const [
                          Text(
                            'Recommend this place 3 friends',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'To get an additional 1% discount successfully recomend this place to 3 friends',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '*successful recommendation is one that ended with a transaction.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.gradientStart,
                        AppColors.gradientEnd,
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        const Text(
                          'Get ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '$getRegularFee%',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
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
          child: Column(
            children: [
              RecommendedButton(
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
              const SizedBox(height: 10),
              ////////////////////////////////////
              RecommendedButton(
                textButton: 'Pay',
                gradient: const LinearGradient(
                  colors: [
                    AppColors.gradientStartActive,
                    AppColors.gradientEndActive,
                  ],
                ),
                textColor: Colors.white,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => ShowDialog(
                      height: 230,
                      child: Column(
                        children: [
                          const Text(
                            r'48,99$',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(height: 30),
                          RecommendedButton(
                            gradient: const LinearGradient(
                              colors: [
                                AppColors.gradientStartActive,
                                AppColors.gradientEndActive,
                              ],
                            ),
                            onPressed: () => Navigator.pop(context),
                            textButton: 'Pay',
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
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
                fontWeight: FontWeight.w900),
          ),
        ),
        RecomendationsWidget(
          detailModel: detailModel,
        ),
      ],
    );
  }
}
