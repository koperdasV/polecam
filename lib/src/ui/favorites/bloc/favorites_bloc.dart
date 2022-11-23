import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:polec/src/ui/favorites/data/favorites_repository.dart';
import 'package:polec/src/ui/favorites/model/favorite_model.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc({
    required IFavoritesRepo favoriteRepo,
  })  : _favoriteRepo = favoriteRepo,
        super(const FavoriteState(favorites: <FavoritesModel>[])) {
    on<LoadFavorite>(_onLoadFavorite);
    on<AddFavorites>(_onAddFavorites);
  }
  final IFavoritesRepo _favoriteRepo;

  Future<void> _onLoadFavorite(
    LoadFavorite event,
    Emitter<FavoriteState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: FavoriteStateStatus.loading,
        ),
      );

      final favorite = await _favoriteRepo.fetchFavorite();

      return favorite.isNotEmpty
          ? emit(
              state.copyWith(
                favorites: List.of(state.favorites)..addAll(favorite),
                status: FavoriteStateStatus.success,
              ),
            )
          : emit(
              state.copyWith(
                favorites: favorite,
                status: FavoriteStateStatus.success,
              ),
            );
    } catch (e) {
      return emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: FavoriteStateStatus.failure,
        ),
      );
    }
  }

  Future<void> _onAddFavorites(
    AddFavorites event,
    Emitter<FavoriteState> emit,
  ) async {
    
  }
}
