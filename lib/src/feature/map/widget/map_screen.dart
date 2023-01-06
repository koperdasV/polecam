import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/map/map_page.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: const CupertinoPageScaffold(
        child: MapPage(),
      ),
    );
  }
}
