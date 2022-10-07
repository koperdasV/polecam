import 'package:flutter/cupertino.dart';
import 'package:polec/src/common/router/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            icon: Icon(CupertinoIcons.square_favorites),
            label: 'Home',
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
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('Page 1 of tab $index'),
              ),
              child: Center(
                child: CupertinoButton(
                  onPressed: () =>  const RegistrationRoute().go(context),
                  child: const Text('Next page'),
                  // onPressed: () { 
                  //   Navigator.of(context).push(
                  //     CupertinoPageRoute<void>(
                  //       builder: (BuildContext context) {
                  //         return CupertinoPageScaffold(
                  //           navigationBar: CupertinoNavigationBar(
                  //             middle: Text('Page 2 of tab $index'),
                  //           ),
                  //           child: Center(
                  //             child: CupertinoButton(
                  //               child: const Text('Back'),
                  //               onPressed: () {
                  //                 Navigator.of(context).pop();
                  //               },
                  //             ),
                  //           ),
                  //         );
                  //       },
                  //     ),
                  //   );
                  // },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
