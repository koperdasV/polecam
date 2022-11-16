part of 'favorite_bloc.dart';

enum FavoriteStateStatus { initial, loading, success, failure }

class FavoriteState extends Equatable {
  const FavoriteState({
    this.status = FavoriteStateStatus.initial,
    this.errorMessage = '',
    required this.favorite,
  });

  final FavoriteStateStatus status;
  final String errorMessage;
  final List<FavoriteModel> favorite;

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        favorite,
      ];

  FavoriteState copyWith({
    FavoriteStateStatus? status,
    String? errorMessage,
    List<FavoriteModel>? favorite,
  }) {
    return FavoriteState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      favorite: favorite ?? this.favorite,
    );
  }
}
