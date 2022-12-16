import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';

class OpenWidget extends StatelessWidget {
  const OpenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final productDetails = DetailModelContext.of(context)?.detailModel;
    const mainAxis = MainAxisAlignment.center;

    const titleStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
    final subtitleStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: AppColor.subTitleColor,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: mainAxis,
              children: [
                const Text(
                  'Monday: ',
                  style: titleStyle,
                ),
                Text(
                  productDetails!.address[0].open.monday,
                  style: subtitleStyle,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: mainAxis,
              children: [
                const Text(
                  'Tuesday: ',
                  style: titleStyle,
                ),
                Text(
                  productDetails.address[0].open.tuesday,
                  style: subtitleStyle,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: mainAxis,
              children: [
                const Text(
                  'Wednesday: ',
                  style: titleStyle,
                ),
                Text(
                  productDetails.address[0].open.wednesday,
                  style: subtitleStyle,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: mainAxis,
              children: [
                const Text(
                  'Thursday: ',
                  style: titleStyle,
                ),
                Text(
                  productDetails.address[0].open.thursday,
                  style: subtitleStyle,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: mainAxis,
              children: [
                const Text(
                  'Friday: ',
                  style: titleStyle,
                ),
                Text(
                  productDetails.address[0].open.friday,
                  style: subtitleStyle,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: mainAxis,
              children: [
                const Text(
                  'Saturday: ',
                  style: titleStyle,
                ),
                Text(
                  productDetails.address[0].open.saturday,
                  style: subtitleStyle,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: mainAxis,
              children: [
                const Text(
                  'Sunday: ',
                  style: titleStyle,
                ),
                Text(
                  productDetails.address[0].open.sunday,
                  style: subtitleStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
