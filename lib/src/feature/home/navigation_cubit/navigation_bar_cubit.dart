import 'package:bloc/bloc.dart';
import 'package:polec/src/feature/home/navigation_cubit/navigation_bar_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(const NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.favorites:
        emit(const NavigationState(NavbarItem.favorites, 1));
        break;
      case NavbarItem.journal:
        emit(const NavigationState(NavbarItem.journal, 2));
        break;
      case NavbarItem.profile:
        emit(const NavigationState(NavbarItem.profile, 3));
        break;
    }
  }
}
