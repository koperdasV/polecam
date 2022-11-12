import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/home/widget/components/title_widget.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/navigation_bar.dart';
import 'package:polec/src/ui/recommended/components/cupertino_nav_bar.dart';

class PayoutPage extends StatelessWidget {
  const PayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavBar(
        title: 'To payout',
      ),
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TitleWidget(
              title: r'Total: 361.26$',
              fontSizeTitle: 16,
            ),
          ),
          PayoutNavigationBar(),
        ],
      ),
    );
  }
}
