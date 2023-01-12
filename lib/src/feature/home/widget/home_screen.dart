import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/home/provider/navigation_bar_provider.dart';
import 'package:polec/src/feature/profile/widget/profile_screen.dart';
import 'package:polec/src/ui/favorites/favorites_page.dart';
import 'package:polec/src/ui/home/widget/home_page.dart';
import 'package:polec/src/ui/journal/widget/journal_page.dart';
import 'package:polec/src/ui/profile/account/cubit/account_cubit.dart';
import 'package:provider/provider.dart';

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

  void _onItemTapped(int index) {
    {
      if (index == _pageIndex) {
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
      _pageIndex = index;
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BottomNavigationBarProvider>().currentIndex;
    setScreen(provider);
    return BlocBuilder<AccountCubit, AccountEditState>(
      builder: (context, state) {
        return CupertinoTabScaffold(
          controller: _tabController,
          tabBar: CupertinoTabBar(
            backgroundColor: AppColor.navBarColor,
            currentIndex: _pageIndex,
            onTap: (index) {
              Provider.of<BottomNavigationBarProvider>(context, listen: false)
                  .updatePageSelection(index);
              _onItemTapped(index);
              context.read<AccountCubit>().editingAcc(editingAccount: false);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_fill, size: 20),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.heart_circle_fill,
                  size: 20,
                ),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.bell_fill,
                  size: 20,
                ),
                label: 'Journal',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person_fill,
                  size: 20,
                ),
                label: 'Profile',
              ),
            ],
          ),
          tabBuilder: (context, index) {
            return CupertinoTabView(
              builder: (context) {
                switch (index) {
                  case 0:
                    return CupertinoTabView(
                      navigatorKey: pageOneTabNavKey,
                      builder: (BuildContext context) {
                        return pages[_pageIndex];
                      },
                    );
                  case 1:
                    return CupertinoTabView(
                      navigatorKey: pageTwoTabNavKey,
                      builder: (BuildContext context) {
                        return pages[_pageIndex];
                      },
                    );
                  case 2:
                    return CupertinoTabView(
                      navigatorKey: pageThreeTabNavKey,
                      builder: (BuildContext context) {
                        return pages[_pageIndex];
                      },
                    );
                  case 3:
                    return CupertinoTabView(
                      navigatorKey: pageFourTabNavKey,
                      builder: (BuildContext context) {
                        return pages[_pageIndex];
                      },
                    );
                  default:
                    return Container();
                }
              },
            );
          },
        );
      },
    );
  }
}
