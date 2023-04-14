import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/details/components/show_dialog.dart';
import 'package:polec/theme/app_colors.dart';

Future<dynamic> payoutMethod(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => ShowDialog(
      height: 282,
      child: Column(
        children: [
          Text(
            'Payout founds',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w900,
              color: AppColor.titleColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 22, bottom: 15),
            child: Text(
              'How much do you want to payout?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
          ),
          CupertinoTextField(
            decoration: const BoxDecoration(
              color: Color(0xFFEEEEF0),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            prefix: Padding(
              padding: const EdgeInsets.only(left: 15, top: 2),
              child: Text(
                r'$',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: AppColor.titleColor,
                ),
              ),
            ),
            prefixMode: OverlayVisibilityMode.editing,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
            ),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 25),
            child: RecommendedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              textButton: 'Payout funds',
              gradient: const LinearGradient(
                colors: [
                  AppColors.gradientStartActive,
                  AppColors.gradientEndActive,
                ],
              ),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
