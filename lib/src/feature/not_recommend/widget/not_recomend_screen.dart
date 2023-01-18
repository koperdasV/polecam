import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/resourses/app_images.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/components/image_widget.dart';
import 'package:polec/src/ui/details/components/navigation_bar.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/details/components/show_dialog.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';
import 'package:polec/theme/app_colors.dart';

class NotRecommendScreen extends StatefulWidget {
  const NotRecommendScreen({
    super.key,
    this.productId = '',
    this.productType = '',
  });

  final String productId;
  final String productType;

  @override
  State<NotRecommendScreen> createState() => _NotRecommendScreenState();
}

class _NotRecommendScreenState extends State<NotRecommendScreen> {
  @override
  void initState() {
    context.read<DetailsBloc>().add(
          DetailsEvent.loadProduct(
            productId: widget.productId,
            productType: widget.productType,
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final amountParse = (widget.regularFee)! * 100;
    // final percent = amountParse;

    return BlocConsumer<DetailsBloc, DetailsState>(
      listener: (context, state) => state.whenOrNull(
        error: (errorMessage) async =>
            context.showErrorBar(content: Text(errorMessage)),
      ),
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        notFound: () => const Center(
          child: Text('not found product by id'),
        ),
        loaded: (productDetails) {
          final amountParse = (productDetails.regularFee) * 100;
          final percent = amountParse.toInt();
          return NotRecDetailModelContext(
            detailModel: productDetails,
            child: CupertinoPageScaffold(
              navigationBar: const CupertinoNavigationBar(
                middle: Text(
                  'In your area',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              child: ListView(
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
                          image: productDetails.image,
                          regularFee: percent,
                          detailModel: productDetails,
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
                              '${percent} %',
                              style: const TextStyle(
                                fontSize: 20,
                                color: AppColors.pecent,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
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
                          color: AppColors.notRecButton,
                        ),
                      ),
                      textButton: 'Recommend to friend',
                      color: AppColors.blcokedButton,
                      textColor: AppColors.notRecButton,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => ShowDialog(
                            height: 200,
                            child: Column(
                              children: [
                                const Text(
                                  'Thai beef fried rice',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'Go to this place and use the service by paying by card that is connected with ',
                                        ),
                                        TextSpan(
                                          text: 'polec.am',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' to recomend to friends',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        error: (errorMessage) => const Center(child: FlutterLogo()),
      ),
    );
  }
}

class NotRecDetailModelContext extends InheritedWidget {
  const NotRecDetailModelContext({
    super.key,
    required this.detailModel,
    required super.child,
  });

  final DetailModel detailModel;

  static NotRecDetailModelContext? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NotRecDetailModelContext>();
  }

  @override
  bool updateShouldNotify(NotRecDetailModelContext oldWidget) {
    return detailModel != oldWidget.detailModel;
  }
}
