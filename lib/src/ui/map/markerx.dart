import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:polec/src/ui/home/blocs/recommended/recommended_bloc.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/src/ui/map/info_widget.dart';
import 'package:polec/theme/app_colors.dart';

class MarkerX extends Marker {
  MarkerX({required this.recommendedModel})
      : super(
          height: 260,
          width: 300,
          point: LatLng(
            double.parse(recommendedModel.address.first.lat),
            double.parse(recommendedModel.address.first.lng),
          ),
          builder: (context) => Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: 150,
                  height: 100,
                  child: Visibility(
                    visible: recommendedModel.visibleOnMap,
                    child: InfoCardWidget(
                      color: AppColors.bgMapInfo,
                      tmp: recommendedModel,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  context
                      .read<RecommendedBloc>()
                      .add(VisiblePoint(recommendedModel.id));
                },
                child: Align(
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          width: 7,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        );

  final RecommendedModel recommendedModel;
}
