import 'package:flutter/cupertino.dart';
import 'package:polec/src/common/router/app_router.dart';
import 'package:polec/src/common/widget/cupertino_context.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppRouter(child: CupertinoContext());
  }
}
