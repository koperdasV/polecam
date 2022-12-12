import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/src/feature/profile/widget/profile_screen.dart';
import 'package:polec/src/ui/favorites/favorites_page.dart';
import 'package:polec/src/ui/home/widget/home_page.dart';
import 'package:polec/src/ui/journal/widget/journal_page.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = [
    const HomePage(),
    const FavoritesPage(),
    const JournalPage(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavigationBarProvider>(context);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
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
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) => pages[provider.currentIndex],
        );
      },
    );
  }
}

class BottomNavigationBarProvider with ChangeNotifier {
  int currentIndex = 0;


  void updatePageSelection(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
