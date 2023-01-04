import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/feature/home/provider/navigation_bar_provider.dart';
import 'package:polec/src/feature/home/widget/home_screen.dart';
import 'package:polec/src/feature/not_found/widget/not_found_screen.dart';
import 'package:polec/src/feature/not_recommend/widget/not_recomend_screen.dart';
import 'package:polec/src/feature/profile/provider/profile_provider.dart';
import 'package:polec/src/feature/registration/widget/registration_screen.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/favorites/bloc/favorites_bloc.dart';
import 'package:polec/src/ui/favorites/data/favorites_repository.dart';
import 'package:polec/src/ui/home/blocs/blocs.dart';
import 'package:polec/src/ui/home/data/categories_repository.dart';
import 'package:polec/src/ui/home/data/recommended_repository.dart';
import 'package:polec/src/ui/home/data/your_area_repository.dart';
import 'package:polec/src/ui/journal/bloc/journals_bloc.dart';
import 'package:polec/src/ui/journal/data/journals_repository.dart';
import 'package:polec/src/ui/profile/account/bloc/account_bloc.dart';
import 'package:polec/src/ui/profile/account/cubit/account_cubit.dart';
import 'package:polec/src/ui/profile/account/data/account_repository.dart';
import 'package:provider/provider.dart';

part 'routes.g.dart';

/// HomeRoute
@TypedGoRoute<HomeRoute>(
  path: '/',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => JournalsBloc(
            journalsRepo: JournalRepository(),
          )..add(const LoadJournals()),
        ),
        BlocProvider(
          create: (context) => CategoriesBloc(
            categoriesRepo: CategoriesRepository(),
          )..add(const LoadCategories()),
        ),
        BlocProvider(
          create: (context) => RecommendedBloc(
            recommendedRepo: RecommendedRepository(),
          )..add(const LoadRecommended()),
        ),
        BlocProvider(
          create: (context) => YourAreaBloc(
            yourAreaRepo: YourAreaRepository(),
          )..add(const LoadYourArea()),
        ),
        BlocProvider(
          create: (context) => DetailsBloc(
            detailsRepo: DetailRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => AccountBloc(
            accountRepo: AccountRepository(),
          )..add(const LoadAccount()),
        ),
        BlocProvider(
          create: (context) => FavoriteBloc(
            favoriteRepo: FavoritesRepository(),
          )..add(const LoadFavorite()),
        ),
        BlocProvider(create: (context) => AccountCubit()),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<BottomNavigationBarProvider>(
            create: (context) => BottomNavigationBarProvider(),
          ),
          ChangeNotifierProvider<SlidingBarProvider>(
            create: (context) => SlidingBarProvider(),
          ),
        ],
        child: const HomeScreen(),
      ),
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
