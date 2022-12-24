import 'package:flutter/cupertino.dart';
import 'package:polec/src/feature/home/provider/navigation_bar_provider.dart';
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
  final CupertinoTabController _tabController = CupertinoTabController();
  int _pageIndex = 0;

  void setScreen(int index) {
    setState(() {
      _pageIndex = index;
      _tabController.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BottomNavigationBarProvider>().currentIndex;
    setScreen(provider);
    return CupertinoTabScaffold(
      controller: _tabController,
      tabBar: CupertinoTabBar(
        currentIndex: _pageIndex,
        onTap: (index) {
          Provider.of<BottomNavigationBarProvider>(context, listen: false)
              .updatePageSelection(index);
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
          builder: (context) {
            return pages[_pageIndex];
          },
        );
      },
    );
  }
}
