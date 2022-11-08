import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final _defaulLat = 50.4547;
  final _defaulLng = 30.5238;
  final _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          mapController: _mapController,
          options: MapOptions(
            center: LatLng(_defaulLat, _defaulLng),
            zoom: 10,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              rotateAlignment:Alignment.topLeft,
              markers: [
                Marker(
                  // width: 150,
                  // height: 100,
                  // rotateAlignment: Alignment.centerLeft,
                  point: LatLng(_defaulLat, _defaulLng),
                  builder: (_) => Container(
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      width: 7,
                                      color: Colors.black,
                                    )),
                              ),
                              onTap: () {
                                print('Marker');
                               
                              },
                            ),
                          ],
                        ),
                         const InfoCardWidget(),

                        /// Если рисовать InfoCardWidget тут, то нужно задавать
                        /// высоту маркера, потому что у него const height: 30
                        /// Если рисовать вне FlutterMap, то оно будет статично
                        /// поверх карты
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const InfoCardWidget(),
      ],
    );
  }
}

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: GestureDetector(
        child: Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Pasibus',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Recommended by: Paweł Woźniak',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '17%',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Ul. Stary Rynek 21, Bydgoszcz',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          print('Text Container');
        },
      ),
    );
  }
}
