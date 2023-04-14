import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/home/blocs/blocs.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';

import 'package:polec/src/ui/recommended/components/categorie_list_box.dart';
import 'package:polec/src/ui/recommended/components/cupertino_nav_bar.dart';
import 'package:polec/src/ui/recommended/components/recommended_list.dart';
import 'package:polec/src/ui/recommended/components/search_box.dart';

class RecommendedPage extends StatefulWidget {
  const RecommendedPage({super.key});

  @override
  State<RecommendedPage> createState() => _RecommendedPageState();
}

class _RecommendedPageState extends State<RecommendedPage> {
  final _searchController = TextEditingController();
  var _filteredProducts = <RecommendedModel>[];

  Future<void> _searchProducts() async {
    final response = await rootBundle.loadString('assets/recommended.json');
    final json = jsonDecode(response) as List<dynamic>;
    final _recommended = json
        .map((e) => RecommendedModel.fromJson(e as Map<String, dynamic>))
        .toList();

    final query = _searchController.text.toLowerCase();
    if (query.isNotEmpty) {
      // RECOMMENDED SEARCH //
      _filteredProducts = _recommended.where((products) {
        final offerName = products.name.toLowerCase();
        final companyName = products.name.toLowerCase();
        final description = products.description.toLowerCase();
        return offerName.contains(query) ||
            companyName.contains(query) ||
            description.contains(query);
      }).toList();
    } else {
      _filteredProducts = _recommended;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _searchProducts();
    _searchController.addListener(_searchProducts);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavBar(
          title: 'Recommended for you',
        ),
        child: BlocConsumer<RecommendedBloc, RecommendedState>(
          listener: (context, state) {
            if (state.status == RecommendedStateStatus.failure &&
                state.errorMessage.isNotEmpty) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text(state.errorMessage)));
            }
          },
          builder: (context, state) {
            return BlocBuilder<RecommendedBloc, RecommendedState>(
              builder: (context, state) {
                if (state.status == RecommendedStateStatus.loading) {
                  return const Center(
                    child: CupertinoActivityIndicator(),
                  );
                } else {
                  return Column(
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
                            RecommendedList(
                              filteredProducts: _filteredProducts,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
