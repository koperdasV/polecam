import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:meta/meta.dart';
import 'package:polec/l10n/l10n.dart';
import 'package:polec/resources/style.dart';
import 'package:polec/src/common/router/app_router.dart';

/// {@template material_context.material_context}
/// CupertinoContext widget
/// {@endtemplate}
class CupertinoContext extends StatefulWidget {
  /// {@macro material_context.material_context}
  const CupertinoContext({
    super.key,
  });

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  static _CupertinoContextState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_CupertinoContextState>();

  @override
  State<CupertinoContext> createState() => _CupertinoContextState();
} // CupertinoContext

const systemUiOverlayStyle = SystemUiOverlayStyle(
  statusBarColor: Colors.transparent, // status bar color
  statusBarBrightness: Brightness.light, //status bar brigtness
  statusBarIconBrightness: Brightness.dark, //status barIcon Brightness
);
/// State for widget CupertinoContext
class _CupertinoContextState extends State<CupertinoContext> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    final routerController = AppRouter.of(context);
    return CupertinoApp.router(
      theme: buildThemeData(),
      title: 'Packages',
      restorationScopeId: 'app',
      routeInformationParser: routerController.router.routeInformationParser,
      routeInformationProvider:
          routerController.router.routeInformationProvider,
      routerDelegate: routerController.router.routerDelegate,
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        //AppLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en', 'US'),
    );
  }
} // _CupertinoContextState
