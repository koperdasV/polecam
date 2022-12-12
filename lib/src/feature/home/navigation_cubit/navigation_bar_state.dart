import 'package:equatable/equatable.dart';

enum NavbarItem { home, favorites, journal, profile }

class NavigationState extends Equatable {
  const NavigationState(this.navbarItem, this.index);
  final NavbarItem navbarItem;
  final int index;

  @override
  List<Object> get props => [
        navbarItem,
        index,
      ];
}
