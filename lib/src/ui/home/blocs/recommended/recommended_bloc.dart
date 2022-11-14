import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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

      return recommended.isNotEmpty
          ? emit(
              state.copyWith(
                recommended: List.of(state.recommended)..addAll(recommended),
                status: RecommendedStateStatus.success,
              ),
            )
          : emit(
              state.copyWith(
                recommended: recommended,
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
}
