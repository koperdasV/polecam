import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/resourses/app_images.dart';
import 'package:polec/src/feature/not_recommend/widget/not_recomend_screen.dart';
import 'package:polec/src/ui/details/components/image_widget.dart';
import 'package:polec/src/ui/details/components/navigation_bar.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/details/components/recommendations.dart';
import 'package:polec/src/ui/details/components/show_dialog.dart';
import 'package:polec/src/ui/payment/payment_widget.dart';
import 'package:polec/theme/app_colors.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          'In your area',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      child: PaymentWidget(image: image),
    );
  }
}
