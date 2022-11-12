import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/home/bloc/categories_bloc.dart';
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
    final categories = context.read<CategoriesBloc>().state.categories;
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index >= categories.length) {
            BlocBuilder<CategoriesBloc, CategoriesState>(
              builder: (context, state) {
                return state.status == CategoriesStateStatus.loading
                    ? const Center(
                        child: CupertinoActivityIndicator(),
                      )
                    : const Center();
              },
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: GestureDetector(
              onTap: () {
                selectIndex(index);
              },
              child: CategoriesItem(
                categoriesModel: categories[index],
                isSelected: (index == _selectedIndex) ? true : false,
              ),
            ),
          );
        },
      ),
    );
  }
}
