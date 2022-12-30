import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/src/ui/home/widget/components/categorie_list_widget.dart';
import 'package:polec/src/ui/home/widget/components/home_app_bar.dart';
import 'package:polec/src/ui/home/widget/components/search_widget.dart';
import 'package:polec/src/ui/home/widget/home_page.dart';
import 'package:polec/src/ui/map/map_widget.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 50, bottom: 15),
          child: HomeAppBar(
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
            child: const Icon(
              CupertinoIcons.list_bullet,
              color: Colors.white,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: SearchWidget(),
        ),
        const SizedBox(height: 10),
        const SingleChildScrollView(
          child: SizedBox(
            height: 70,
            child: CategoriesList(),
          ),
        ),
        const SizedBox(height: 10),
        const Expanded(
          child: MapWidget(),
        ),
      ],
    );
  }
}
