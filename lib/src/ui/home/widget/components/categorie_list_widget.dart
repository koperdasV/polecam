import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/home/blocs/categories/categories_bloc.dart';
import 'package:polec/src/ui/home/widget/components/categories_item.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int _selectedIndex = 0;

  void selectIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CategoriesBloc, CategoriesState>(
      listener: (context, state) {
        if (state.status == CategoriesStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      child: BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (context, state) {
          if (state.status == CategoriesStateStatus.loading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          } else {
            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: state.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 18, top: 8, bottom: 8),
                  child: GestureDetector(
                    onTap: () {
                      selectIndex(index);
                    },
                    child: CategoriesItem(
                      categoriesModel: state.categories[index],
                      isSelected: (index == _selectedIndex) ? true : false,
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
