import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/feature/not_recommend/widget/not_recomend_screen.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: GestureDetector(
        child: Container(
          // width: 150,
          // height: 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 8,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Pasibus',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Recommended by: Paweł Woźniak',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '17%',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Ul. Stary Rynek 21, Bydgoszcz',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          if (color == Colors.white) {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const DetailsScreen(),
              ),
            );
          } else {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const NotRecommendScreen(),
              ),
            );
          }
        },
      ),
    );
  }
}
