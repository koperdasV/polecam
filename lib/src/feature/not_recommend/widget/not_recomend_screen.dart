import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/components/image_widget.dart';
import 'package:polec/src/ui/details/components/navigation_bar.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/details/components/show_dialog.dart';
import 'package:polec/theme/app_colors.dart';

class NotRecommendScreen extends StatefulWidget {
  const NotRecommendScreen({super.key});

  @override
  State<NotRecommendScreen> createState() => _NotRecommendScreenState();
}

class _NotRecommendScreenState extends State<NotRecommendScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          'In your area',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
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
              children: const [
                ImageWidget(),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Thai beef fried rice',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
                    const Text(
                      '10 %',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.pecent,
                        fontWeight: FontWeight.bold,
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
              textButton: 'Recommend to friend',
              color: AppColors.blcokedButton,
              imageColor: Colors.black,
              textColor: Colors.black,
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
                            fontWeight: FontWeight.bold,
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
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
    );
  }
}
