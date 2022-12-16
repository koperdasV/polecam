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

class DetailsWidget extends StatefulWidget {
  const DetailsWidget({
    super.key,
    required this.detailModel,
  });
  final DetailModel detailModel;

  @override
  State<DetailsWidget> createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  @override
  Widget build(BuildContext context) {
    final amountParse = (widget.detailModel.regularFee) * 100;
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
                image: widget.detailModel.image,
                regularFee: percent,
                detailModel: widget.detailModel,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  widget.detailModel.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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
                    '$percent %',
                    style: const TextStyle(
                      fontSize: 20,
                      color: AppColors.pecent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => showDialog(
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
                            fontWeight: FontWeight.bold,
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
                ),
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
                            fontWeight: FontWeight.bold,
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
            image: Image.asset(
              AppImages.logo,
              color: Colors.white,
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
              fontSize: 16,
              color: AppColor.titleColor,
            ),
          ),
        ),
        RecomendationsWidget(
          detailModel: widget.detailModel,
        ),
      ],
    );
  }
}
