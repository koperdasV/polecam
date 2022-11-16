import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:polec/src/ui/favorite/data/favorite_repository.dart';
import 'package:polec/src/ui/favorite/model/favorite_model.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc({
    required IFavoriteRepo favoriteRepo,
  })  : _favoriteRepo = favoriteRepo,
        super(const FavoriteState(favorite: <FavoriteModel>[])) {
    on<LoadFavorite>(_onLoadFavorite);
  }
  final IFavoriteRepo _favoriteRepo;

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
                favorite: List.of(state.favorite)..addAll(favorite),
                status: FavoriteStateStatus.success,
              ),
            )
          : emit(
              state.copyWith(
                favorite: favorite,
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
}
