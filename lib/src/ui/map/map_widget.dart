import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:polec/src/ui/home/blocs/blocs.dart';
import 'package:polec/src/ui/map/info_widget.dart';
import 'package:polec/theme/app_colors.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final _defaulLat = 52.24777;
  final _defaulLng = 21.0141666;
  bool infoVisibleFirst = false;
  bool infoVisibleSecond = false;
  bool infoVisibleThird = false;
  bool infoVisibleFourth = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedBloc, RecommendedState>(
      builder: (context, state) {
        if (state.status == RecommendedStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          context.showErrorBar<String>(
            content: Text(state.errorMessage),
          );
        }
        if (state.status == RecommendedStateStatus.loading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        if (state.status == RecommendedStateStatus.success) {
          return Stack(
            children: [
              FlutterMap(
                options: MapOptions(
                  center: LatLng(_defaulLat, _defaulLng),
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
                        point: LatLng(_defaulLat, _defaulLng),
                        builder: (_) {
                          return GestureDetector(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 7,
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                if (infoVisibleFirst == false) {
                                  infoVisibleFirst = true;
                                } else {
                                  infoVisibleFirst = false;
                                }
                              });
                            },
                          );
                        },
                      ),
                      Marker(
                        point: LatLng(_defaulLat, _defaulLng),
                        width: 150,
                        height: 100,
                        anchorPos: AnchorPos.exactly(Anchor(155, -5)),
                        builder: (_) {
                          return Visibility(
                            visible: infoVisibleFirst,
                            child: InfoCardWidget(
                              color: Colors.white,
                              tmp: state.recommended[0],
                            ),
                          );
                        },
                      ),
                      Marker(
                        point: LatLng(
                          double.parse(
                            state.recommended[0].address![0].lat.toString(),
                          ),
                          double.parse(
                            state.recommended[0].address![0].lng.toString(),
                          ),
                        ),
                        builder: (_) {
                          return GestureDetector(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 7,
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                if (infoVisibleSecond == false) {
                                  infoVisibleSecond = true;
                                } else {
                                  infoVisibleSecond = false;
                                }
                              });
                            },
                          );
                        },
                      ),
                      Marker(
                        point: LatLng(52.249893, 21.012071),
                        width: 150,
                        height: 100,
                        anchorPos: AnchorPos.exactly(Anchor(155, -5)),
                        builder: (_) {
                          return Visibility(
                            visible: infoVisibleSecond,
                            child: InfoCardWidget(
                              color: AppColors.bgMapInfo,
                              tmp: state.recommended[0],
                            ),
                          );
                        },
                      ),
                      Marker(
                        point: LatLng(52.249166, 21.00388),
                        builder: (_) {
                          return GestureDetector(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 7,
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                if (infoVisibleThird == false) {
                                  infoVisibleThird = true;
                                } else {
                                  infoVisibleThird = false;
                                }
                              });
                            },
                          );
                        },
                      ),
                      Marker(
                        point: LatLng(52.249166, 21.00388),
                        width: 150,
                        height: 100,
                        anchorPos: AnchorPos.exactly(Anchor(155, -5)),
                        builder: (_) {
                          return Visibility(
                            visible: infoVisibleThird,
                            child: InfoCardWidget(
                              color: Colors.white,
                              tmp: state.recommended[0],
                            ),
                          );
                        },
                      ),
                      Marker(
                        point: LatLng(52.25367097412143, 21.020608955734343),
                        builder: (_) {
                          return GestureDetector(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 7,
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                if (infoVisibleFourth == false) {
                                  infoVisibleFourth = true;
                                } else {
                                  infoVisibleFourth = false;
                                }
                              });
                            },
                          );
                        },
                      ),
                      Marker(
                        point: LatLng(52.25367097412143, 21.020608955734343),
                        width: 150,
                        height: 100,
                        anchorPos: AnchorPos.exactly(Anchor(155, -5)),
                        builder: (_) {
                          return Visibility(
                            visible: infoVisibleFourth,
                            child: InfoCardWidget(
                              color: Colors.white,
                              tmp: state.recommended[0],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        } else {
          return const Text('Error');
        }
      },
    );
  }
}
