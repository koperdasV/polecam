import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/details/details_widget.dart';

import 'package:polec/theme/app_colors.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
    this.image = '',
    this.regularFee = 0,
    this.recommend,
    this.name = '',
  });

  final String image;
  final double? regularFee;
  final String? recommend;
  final String name;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final image = widget.image;
    final regularFee = widget.regularFee;
    final recommend = widget.recommend;

    final name = widget.name;

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
      child: DetailsWidget(
        regularFee: regularFee,
        image: image,
        recommend: recommend,
        name: name,
      ),
      // }
    );
  }
}
