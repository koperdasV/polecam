import 'package:flutter/material.dart';

class JournalCard extends StatelessWidget {
  const JournalCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(
            'assets/fake_images/food_polecane.png',
          ),
          radius: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Green Bean Salad',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
              Text(
                'Bartek Nowak recommends',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            '10:30 am',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}