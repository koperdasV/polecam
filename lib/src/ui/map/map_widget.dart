import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:polec/src/ui/home/blocs/blocs.dart';
import 'package:polec/src/ui/map/markerx.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  static const _latWarszawa = 50.5793055;
  static const _lonWarszawa = 22.2867169;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecommendedBloc, RecommendedState>(
      listener: (context, state) {
        if (state.status == RecommendedStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          context.showErrorBar<String>(
            content: Text(state.errorMessage),
          );
        }
      },
      builder: (context, state) {
        if (state.status == RecommendedStateStatus.loading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        } else {
          return Stack(
            children: [
              FlutterMap(
                options: MapOptions(
                  center: LatLng(
                    state.position?.latitude ?? _latWarszawa,
                    state.position?.longitude ?? _lonWarszawa,
                  ),
                  zoom: 14,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.app',
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(
                        width: 50,
                        height: 50,
                        point: LatLng(
                          state.position?.latitude ?? _latWarszawa,
                          state.position?.longitude ?? _lonWarszawa,
                        ),
                        builder: (context) {
                          return Align(
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
                          );
                        },
                      ),
                    ],
                  ),
                  MarkerLayer(
                    rotate: true,
                    markers: state.recommended
                        .map((e) => MarkerX(recommendedModel: e))
                        .toList(growable: false),
                  ),
                ],
              )
            ],
          );
        }
      },
    );
  }
}
