import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:polec/src/ui/home/data/recommended_repository.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';

part 'recommended_event.dart';
part 'recommended_state.dart';

class RecommendedBloc extends Bloc<RecommendedEvent, RecommendedState> {
  RecommendedBloc({
    required IRecommendedRepo recommendedRepo,
  })  : _recommendedRepo = recommendedRepo,
        super(const RecommendedState(recommended: <RecommendedModel>[])) {
    on<LoadRecommended>(_onLoadRecommended);
    on<VisiblePoint>(_onVisiblePoint);
  }
  final IRecommendedRepo _recommendedRepo;

  Future<void> _onLoadRecommended(
    LoadRecommended event,
    Emitter<RecommendedState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: RecommendedStateStatus.loading,
        ),
      );

      final recommended = await _recommendedRepo.fetchRecommended();

      recommended.isNotEmpty
          ? emit(
              state.copyWith(
                recommended: List.of(state.recommended)..addAll(recommended),
                // status: RecommendedStateStatus.success,
              ),
            )
          : emit(
              state.copyWith(
                recommended: recommended,
                // status: RecommendedStateStatus.success,
              ),
            );
      final position = await _recommendedRepo.getCurrentLocation();
      return emit(
        state.copyWith(
          position: position,
          status: RecommendedStateStatus.success,
        ),
      );
    } catch (e) {
      return emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: RecommendedStateStatus.failure,
        ),
      );
    }
  }

  Future<void> _onVisiblePoint(
    VisiblePoint event,
    Emitter<RecommendedState> emit,
  ) async {
    final r = state.recommended
        .map(
          (e) => e.copyWith(
            visibleOnMap:
                (e.visibleOnMap && e.id == event.id) ? false : e.id == event.id,
          ),
        )
        .toList(growable: false)
      ..sort((a, b) => b.visibleOnMap ? -1 : 1);
    return emit(
      state.copyWith(
        recommended: r,
        status: RecommendedStateStatus.success,
      ),
    );
  }
}
