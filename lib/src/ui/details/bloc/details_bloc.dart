import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc({required IDetailRepo detailsRepo})
      : _detailsRepo = detailsRepo,
        super(DetailsState()) {
    on<LoadDetails>(_onLoadDetailsToState);
    on<LoadRecommenations>(_onLoadRecommendationsToState);
  }

  final IDetailRepo _detailsRepo;

  Future<void> _onLoadDetailsToState(
    LoadDetails event,
    Emitter<DetailsState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: DetailsStateStatus.loading,
        ),
      );

      final recommendation = await _detailsRepo.fetchDetails();

      return emit(state.copyWith(
        recommendations: recommendation,
        status: DetailsStateStatus.success,
      ));
    } catch (e) {
      return emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: DetailsStateStatus.failure,
        ),
      );
    }
  }

  Future<void> _onLoadRecommendationsToState(
    LoadRecommenations event,
    Emitter<DetailsState> emit,
  ) async {
    emit(const DetailsState(status: DetailsStateStatus.loading));
    add(const LoadRecommenations());
  }
}
