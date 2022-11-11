import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/home/bloc/categories_bloc.dart';
import 'package:polec/src/ui/home/model/categorie_model.dart';

class CategorieList extends StatefulWidget {
  const CategorieList({
    Key? key,
  }) : super(key: key);

  @override
  State<CategorieList> createState() => _CategorieListState();
}

class _CategorieListState extends State<CategorieList> {
  @override
  void initState() {
    super.initState();
    context.read<CategoriesBloc>().add(const LoadCategories());
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
                    : Center();
              },
            );
          }
          return CategoriesItem(
            categoriesModel: categories[index],
          );
        },
      ),
    );
  }
}

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    Key? key,
    required this.categoriesModel,
  }) : super(key: key);

  final CategoriesModel categoriesModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        width: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 14),
              child: Icon(
                CupertinoIcons.bitcoin_circle,
                size: 30,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoriesModel.name,
                  style: TextStyle(
                    color: AppColor.categorieTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '54 places',
                  style: TextStyle(
                    color: AppColor.categorieTextColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
