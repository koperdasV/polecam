import 'package:flutter/cupertino.dart';
import 'package:polec/src/feature/profile/widget/profile_screen.dart';
import 'package:polec/src/ui/favorites/favorites_page.dart';
import 'package:polec/src/ui/home/widget/home_page.dart';
import 'package:polec/src/ui/journal/widget/journal_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<NavigatorState> pageOneTabNavKey =
      GlobalKey<NavigatorState>();

  final GlobalKey<NavigatorState> pageTwoTabNavKey =
      GlobalKey<NavigatorState>();

  final GlobalKey<NavigatorState> pageThreeTabNavKey =
      GlobalKey<NavigatorState>();

  final GlobalKey<NavigatorState> pageFourTabNavKey =
      GlobalKey<NavigatorState>();

  int _selectedIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const FavoritesPage(),
    const JournalPage(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    {
      if (index == _selectedIndex) {
        switch (index) {
          case 0:
            pageOneTabNavKey.currentState?.popUntil((r) => r.isFirst);
            break;
          case 1:
            pageTwoTabNavKey.currentState?.popUntil((r) => r.isFirst);
            break;
          case 2:
            pageThreeTabNavKey.currentState?.popUntil((r) => r.isFirst);
            break;
          case 3:
            pageFourTabNavKey.currentState?.popUntil((r) => r.isFirst);
            break;
        }
      }
      _selectedIndex = index;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_circle_fill),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell_fill),
            label: 'Journal',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill),
            label: 'Profile',
          ),
        ],
        onTap: _onItemTapped,
      ),
      tabBuilder: (context, index) {
        _selectedIndex = index;
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  navigatorKey: pageOneTabNavKey,
                  builder: (BuildContext context) {
                    return pages[index];
                  },
                );
              case 1:
                return CupertinoTabView(
                  navigatorKey: pageTwoTabNavKey,
                  builder: (BuildContext context) {
                    return pages[index];
                  },
                );
              case 2:
                return CupertinoTabView(
                  navigatorKey: pageThreeTabNavKey,
                  builder: (BuildContext context) {
                    return pages[index];
                  },
                );
              case 3:
                return CupertinoTabView(
                  navigatorKey: pageFourTabNavKey,
                  builder: (BuildContext context) {
                    return pages[index];
                  },
                );
              default:
                return Container();
            }
          },
        );
      },
    );
  }
}
