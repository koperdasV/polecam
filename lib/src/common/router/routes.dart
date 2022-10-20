


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/feature/home/widget/home_screen.dart';
import 'package:polec/src/feature/not_found/widget/not_found_screen.dart';
import 'package:polec/src/feature/registration/widget/registration_screen.dart';

part 'routes.g.dart';

/// HomeRoute
@TypedGoRoute<HomeRoute>(
  path: '/',
  // routes: <TypedGoRoute<GoRouteData>>[
  //   TypedGoRoute<SettingsRoute>(
  //     path: 'settings',
  //   ),
  //   TypedGoRoute<ProfileRoute>(
  //     path: 'profile',
  //   ),
  //   TypedGoRoute<PackagesRoute>(
  //     path: 'packages',
  //     routes: <TypedGoRoute<GoRouteData>>[
  //       TypedGoRoute<PackageRoute>(
  //         path: 'package/:name',
  //         routes: <TypedGoRoute<GoRouteData>>[
  //           TypedGoRoute<VersionRoute>(
  //             path: 'version/:version',
  //           ),
  //         ],
  //       ),
  //     ],
  //   ),
  //   TypedGoRoute<FavoritesRoute>(
  //     path: 'favorites',
  //   ),
  // ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context) => const HomeScreen();
}

/// RegistrationRoute
@TypedGoRoute<RegistrationRoute>(path: '/registration')
class RegistrationRoute extends GoRouteData {
  const RegistrationRoute();

  @override
  Widget build(BuildContext context) => const RegistrationScreen();
}

/// NotFoundRoute
@internal
class NotFoundRoute extends GoRouteData {
  NotFoundRoute({this.exception});

  final Exception? exception;

  @override
  Widget build(BuildContext context) => NotFoundScreen(exception: exception);
}

/// DetailsRoute
@TypedGoRoute<DetailsRoute>(path: '/details')
class DetailsRoute extends GoRouteData {
  const DetailsRoute();

  @override
  Widget build(BuildContext context) => const DetailsScreen();
}