import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/home/blocs/blocs.dart';
import 'package:polec/src/ui/home/model/yourArea/your_area_model.dart';

import 'package:polec/src/ui/in_your_area/components/your_area_list.dart';
import 'package:polec/src/ui/recommended/components/categorie_list_box.dart';
import 'package:polec/src/ui/recommended/components/cupertino_nav_bar.dart';
import 'package:polec/src/ui/recommended/components/search_box.dart';

class YourAreaPage extends StatefulWidget {
  const YourAreaPage({super.key});

  @override
  State<YourAreaPage> createState() => _YourAreaPageState();
}

class _YourAreaPageState extends State<YourAreaPage> {
  final _searchController = TextEditingController();
  var _filteredYourArea = <YourAreaModel>[];

  Future<void> _searchYourArea() async {
    final response = await rootBundle.loadString('assets/near.json');
    final json = jsonDecode(response) as List<dynamic>;
    final _yourArea = json
        .map((e) => YourAreaModel.fromJson(e as Map<String, dynamic>))
        .toList();

    final query = _searchController.text.toLowerCase();
    if (query.isNotEmpty) {
      // RECOMMENDED SEARCH //
      _filteredYourArea = _yourArea.where((products) {
        final offerName = products.name.toLowerCase();
        final companyName = products.name.toLowerCase();
        final description = products.description.toLowerCase();
        return offerName.contains(query) ||
            companyName.contains(query) ||
            description.contains(query);
      }).toList();
    } else {
      _filteredYourArea = _yourArea;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _searchYourArea();
    _searchController.addListener(_searchYourArea);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavBar(
        title: 'In your area',
      ),
      child: BlocBuilder<YourAreaBloc, YourAreaState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Column(
              children: [
                SearchBox(
                  controller: _searchController,
                ),
                const CategorieListBox(),
                Expanded(
                  child: CustomScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    slivers: [
                      YourAreaListFiltered(
                        filteredProducts: _filteredYourArea,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
