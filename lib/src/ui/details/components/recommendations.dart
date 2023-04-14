import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/resourses/app_images.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';

class RecomendationsWidget extends StatelessWidget {
  const RecomendationsWidget({super.key, required this.detailModel});
  final DetailModel detailModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: detailModel.recommendations.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      AppImages.profile,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${detailModel.recommendations[index].name} ${detailModel.recommendations[index].surname}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        detailModel.recommendations[index].subtitle,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColor.subTitleColor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              Text(
                detailModel.recommendations[index].amount,
                style: TextStyle(
                  fontSize: 18,
                  color: AppColor.titleColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
