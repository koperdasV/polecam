import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:polec/src/ui/map/info_widget.dart';
import 'package:polec/theme/app_colors.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final _defaulLat = 50.4547;
  final _defaulLng = 30.5238;
  bool infoVisibleFirst = false;
  bool infoVisibleSecond = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            center: LatLng(_defaulLat, _defaulLng),
            zoom: 16,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              // rotate: true,
              // rotateAlignment: Alignment.topLeft,
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
                      child: const InfoCardWidget(
                        color: Colors.white,
                      ),
                    );
                  },
                ),
                Marker(
                  point: LatLng(50.4558456, 30.5208247),
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
                  point: LatLng(50.4558456, 30.5208247),
                  width: 150,
                  height: 100,
                  anchorPos: AnchorPos.exactly(Anchor(155, -5)),
                  builder: (_) {
                    return Visibility(
                        visible: infoVisibleSecond,
                        child:
                            const InfoCardWidget(color: AppColors.bgMapInfo));
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
