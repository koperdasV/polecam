import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:polec/src/ui/home/blocs/blocs.dart';
import 'package:polec/src/ui/map/markerx.dart';

class MapWidget extends StatefulWidget {
  MapWidget({super.key});

  late Position position;
  bool isLoad = false;

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  double? lat;
  double? long;

  Future<void> getPosition() async {
    widget.position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    setState(() {
      widget.isLoad = true;
    });
  }

  // Future<Position> _getCurrentLocation() async {
  //   final serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return Future.error('Location services are disable');
  //   }

  //   var permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       return Future.error('Location permission are denied');
  //     }
  //   }
  //   if (permission == LocationPermission.deniedForever) {
  //     return Future.error(
  //       'Location permissions are permanently denied, we cannot request',
  //     );
  //   }
  //   return Geolocator.getCurrentPosition();
  // }

  @override
  void initState() {
    getPosition();
    super.initState();
  }

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
              if (widget.isLoad)
                FlutterMap(
                  options: MapOptions(
                    center: LatLng(
                      widget.position.latitude,
                      widget.position.longitude,
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
                            widget.position.latitude,
                            widget.position.longitude,
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
              else
                const Center(child: CircularProgressIndicator()),
            ],
          );
        } else {
          return const Text('Error');
        }
      },
    );
  }
}
