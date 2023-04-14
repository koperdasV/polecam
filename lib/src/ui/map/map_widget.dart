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
  static const _latWarszawa = 52.237049;
  static const _lonWarszawa = 21.017532;

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
                  maxZoom: 18.4,
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
                          return Stack(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
