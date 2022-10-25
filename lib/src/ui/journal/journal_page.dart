import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:polec/src/ui/recommended/components/cupertino_nav_bar.dart';
import 'package:polec/src/ui/recommended/components/search_box.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavBar(
        title: 'Journal',
      ),
      child: Column(
        children: [
          const SearchBox(),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 10,
                    (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: GestureDetector(
                        onTap: () {
                         // _showAlertDialog(context);
                        },
                        child: Row(
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
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // // CupertinoAlertDialog showAlertDialog(BuildContext context) {
  // //   return const CupertinoAlertDialog(
  // //     title: Text('Papa Grande'),
  // //   );
  // // }
  // void _showAlertDialog(BuildContext context) {
  //   showCupertinoModalPopup<void>(
  //     context: context,
  //     builder: (BuildContext context) => CupertinoAlertDialog(
  //       title: const CircleAvatar(
  //         radius: 50,
  //         backgroundImage: AssetImage(
  //           'assets/fake_images/food_polecane.png',
  //         ),
  //       ),
  //       content: Column(
  //         children: [
  //           Text('Papa Grande'),
  //         ],
  //       ),
  //       actions: <CupertinoDialogAction>[
  //         CupertinoDialogAction(
  //           /// This parameter indicates this action is the default,
  //           /// and turns the action's text to bold text.
  //           isDefaultAction: true,
  //           onPressed: () {
  //             Navigator.pop(context);
  //           },
  //           child: const Icon(CupertinoIcons.clear),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
