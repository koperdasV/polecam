import 'package:flutter/cupertino.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/feature/profile/widget/profile_screen.dart';
import 'package:polec/src/ui/favorite/favorite_page.dart';
import 'package:polec/src/ui/home/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = [
    const HomePage(),
    const FavoritePage(),
    const DetailsScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.music_note_list),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Explore',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return pages[index];
            // CupertinoPageScaffold(
            //   // navigationBar: CupertinoNavigationBar(
            //   //   middle: Text('Page 1 of tab $index'),
            //   // ),
            //   child: Center(
            //     child: HomePage(
            //         // onPressed: () => const RegistrationRoute().go(context),
            //         // child: const HomePage(),
            //         // onPressed: () {
            //         //   Navigator.of(context).push(
            //         //     CupertinoPageRoute<void>(
            //         //       builder: (BuildContext context) {
            //         //         return CupertinoPageScaffold(
            //         //           navigationBar: CupertinoNavigationBar(
            //         //             middle: Text('Page 2 of tab $index'),
            //         //           ),
            //         //           child: Center(
            //         //             child: CupertinoButton(
            //         //               child: const Text('Back'),
            //         //               onPressed: () {
            //         //                 Navigator.of(context).pop();
            //         //               },
            //         //             ),
            //         //           ),
            //         //         );
            //         //       },
            //         //     ),
            //         //   );
            //         // },
            //         ),
            //   ),
            // );
          },
        );
      },
    );
  }
}
