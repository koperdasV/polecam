part of 'favorites_bloc.dart';

class FavoriteEvent extends Equatable {
  const FavoriteEvent();

  @override
  List<Object?> get props => [];
}

class LoadFavorite extends FavoriteEvent {
  const LoadFavorite();

  @override
  List<Object?> get props => [];
}

class AddFavorites extends FavoriteEvent {
  const AddFavorites(this.favoritesModel);

  final FavoritesModel favoritesModel;

  @override
  List<Object?> get props => [];
}
