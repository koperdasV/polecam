import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/feature/home/widget/home_screen.dart';
import 'package:polec/src/feature/not_found/widget/not_found_screen.dart';
import 'package:polec/src/feature/not_recommend/widget/not_recomend_screen.dart';
import 'package:polec/src/feature/registration/widget/registration_screen.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/home/bloc/categories_bloc.dart';
import 'package:polec/src/ui/home/data/categories_repository.dart';
import 'package:polec/src/ui/home/data/recommended_repository.dart';
import 'package:polec/src/ui/journal/bloc/journals_bloc.dart';
import 'package:polec/src/ui/journal/data/journals_repository.dart';
import 'package:polec/src/ui/profile/account/bloc/account_bloc.dart';
import 'package:polec/src/ui/profile/account/data/account_repository.dart';

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
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => JournalsBloc(journalsRepo: JournalRepository()),
        ),
        BlocProvider(
          create: (context) => CategoriesBloc(
            categoriesRepo: CategoriesRepository(),
            recommendedRepo: RecommendedRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => DetailsBloc(
            detailsRepo: DetailRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => AccountBloc(
            accountRepo: AccountRepository(),
          ),
        ),
      ],
      child: const HomeScreen(),
    );
  }
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

/// DetailsRoute
@TypedGoRoute<NotRecommendRoute>(path: '/not_recommend')
class NotRecommendRoute extends GoRouteData {
  const NotRecommendRoute();

  @override
  Widget build(BuildContext context) => const NotRecommendScreen();
}
