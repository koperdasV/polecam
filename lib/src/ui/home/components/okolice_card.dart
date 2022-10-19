import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/home/components/percent_widget.dart';

class OkoliceCard extends StatelessWidget {
  const OkoliceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 3,
          child: Stack(
            children: [
              Image.asset('assets/fake_images/food_okolice.png'),
              const PercentWidget(
                persent: '17%',
                fontSize: 22,
              ),
              CupertinoButton(
                onPressed: () {},
                child: const Icon(
                  CupertinoIcons.heart,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            'Thai beef fried rice',
            style: TextStyle(
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
