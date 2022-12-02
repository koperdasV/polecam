import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/resourses/app_images.dart';
import 'package:polec/src/feature/not_recommend/widget/not_recomend_screen.dart';
import 'package:polec/src/feature/payment/widget/payment_screen.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/components/image_widget.dart';
import 'package:polec/src/ui/details/components/navigation_bar.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/details/components/recommendations.dart';
import 'package:polec/src/ui/details/components/show_dialog.dart';
import 'package:polec/src/ui/favorites/bloc/favorites_bloc.dart';
import 'package:polec/src/ui/home/blocs/recommended/recommended_bloc.dart';
import 'package:polec/src/ui/home/blocs/yourArea/your_area_bloc.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/theme/app_colors.dart';

class DetailsWidget extends StatefulWidget {
  const DetailsWidget({
    super.key,
    required this.image,
    required this.regularFee,
    this.recommend,
    required this.name,
    required this.description,
  });
  final String image;
  final double? regularFee;
  final String? recommend;
  final String description;

  final String name;

  @override
  State<DetailsWidget> createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  @override
  Widget build(BuildContext context) {
    final amountParse = (widget.regularFee)! * 100.round();
    final percent = amountParse.toInt();
    final getRegularFee = percent + 1;

    // final detailModel = context.read<DetailsBloc>().state.detailModel;

    return BlocBuilder<DetailsBloc, DetailsState>(
      builder: (context, state) {
        if (state.status == DetailsStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          context.showErrorBar<String>(
            content: Text(state.errorMessage),
          );
        }
        if (state.status == DetailsStateStatus.loading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        if (state.status == DetailsStateStatus.success) {
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
                      image: widget.image,
                      regularFee: percent,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        widget.name,
                        // detailModel.name.toString(),
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
                          //textAlign: TextAlign.justify,
                          'Your discount:',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColor.subTitleColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          // textAlign: TextAlign.justify,
                          '${percent} %',
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
                      child: Container(
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
                                '${getRegularFee}%',
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
              CustomNavigationBar(
                description: widget.description,
              ),
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
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   CupertinoPageRoute(
                    //     builder: (context) => PaymentScreen(
                    //       image: widget.image,
                    //     ),
                    //   ),
                    // );
                  },
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
              const RecomendationsWidget(),
            ],
          );
        } else {
          return const Text('No data');
        }
      },
    );
  }
}
