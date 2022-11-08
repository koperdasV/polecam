import 'package:flutter/material.dart';
import 'package:polec/src/ui/details/components/show_dialog.dart';
import 'package:polec/src/ui/home/components/in_active_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({
    Key? key,
    required PageController controller,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return ShowDialog(
      height: 500,
      child: Column(
        children: [
          const CircleAvatar(
            radius: 90,
            backgroundImage: AssetImage(
              'assets/fake_images/food_polecane.png',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Papa Grande',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            child: Text(
              textAlign: TextAlign.center,
              'Anna recommends\n With your first purchase\n'
              'You will get a 30% discount',
              style: TextStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SmoothPageIndicator(
              controller: _controller, // PageController
              count: 3,
              onDotClicked: (index) {},
            ),
          ),
          const InActiveButton(
            text: 'Save the Card',
            fontSize: 22,
          ),
        ],
      ),
    );
  }
}
