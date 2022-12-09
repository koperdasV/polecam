import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/feature/product_details/bloc/product_details_bloc.dart';
import 'package:polec/src/feature/product_details/widget/product_details.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/home/model/yourArea/your_area_model.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class YourAreaCard extends StatelessWidget {
  const YourAreaCard({
    Key? key,
    this.height,
    this.width,
    this.child,
    required this.tmp,
  }) : super(key: key);

  final double? height;
  final double? width;
  final Widget? child;

  final YourAreaModel tmp;

  @override
  Widget build(BuildContext context) {
    final amountParse = (tmp.regularFee)! * 100.round();
    final percent = amountParse.toInt();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => BlocProvider<DetailsBloc>(
                  create: (context) =>
                      DetailsBloc(detailsRepo: DetailRepository()),
                  child: DetailsScreen(
                    productId: tmp.id!,
                    productType: 'yourArea',
                  ),
                ),
              ),
            );
          },
          child: Stack(
            children: [
              SizedBox(
                height: 190,
                width: 166,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    tmp.image.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              PercentWidget(
                percent: percent.toString(),
                fontSize: 22,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(100),
                  onPressed: () {},
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.favoriteButtonColor,
                    ),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.heart,
                        color: AppColor.textButtonColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            tmp.name.toString(),
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        const Text(
          'Polecone przez: Paweł Woźniak',
          style: TextStyle(
            fontSize: 12,
            color: Color(0xFF9fa2b1),
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
