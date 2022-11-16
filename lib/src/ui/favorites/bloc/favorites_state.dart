part of 'favorites_bloc.dart';

enum FavoriteStateStatus { initial, loading, success, failure }

class FavoriteState extends Equatable {
  const FavoriteState({
    this.status = FavoriteStateStatus.initial,
    this.errorMessage = '',
    required this.favorites,
  });

  final FavoriteStateStatus status;
  final String errorMessage;
  final List<FavoritesModel> favorites;

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        favorites,
      ];

  FavoriteState copyWith({
    FavoriteStateStatus? status,
    String? errorMessage,
    List<FavoritesModel>? favorites,
  }) {
    return FavoriteState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      favorites: favorites ?? this.favorites,
    );
  }
}
