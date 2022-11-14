import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/home/bloc/home_bloc.dart';
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
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.status == CategoriesStateStatus.loading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        if (state.status == CategoriesStateStatus.success) {
          return Padding(
            padding: const EdgeInsets.only(left: 8),
            child: ListView.builder(
              itemCount: state.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
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
            ),
          );
        } else {
          return const Text('Error');
        }
      },
    );
  }
}
