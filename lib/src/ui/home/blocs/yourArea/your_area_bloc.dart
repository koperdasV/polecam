import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:polec/src/ui/home/data/your_area_repository.dart';
import 'package:polec/src/ui/home/model/yourArea/your_area_model.dart';

part 'your_area_event.dart';
part 'your_area_state.dart';

class YourAreaBloc extends Bloc<YourAreaEvent, YourAreaState> {
  YourAreaBloc({
    required IYourAreaRepo yourAreaRepo,
  })  : _yourAreaRepo = yourAreaRepo,
        super(const YourAreaState(yourArea: <YourAreaModel>[])) {
    on<LoadYourArea>(_onLoadYourArea);
  }
  final IYourAreaRepo _yourAreaRepo;

  Future<void> _onLoadYourArea(
    LoadYourArea event,
    Emitter<YourAreaState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: YourAreaStateStatus.loading,
        ),
      );

      final yourArea = await _yourAreaRepo.fetchYourArea();

      return yourArea.isNotEmpty
          ? emit(
              state.copyWith(
                yourArea: List.of(state.yourArea)..addAll(yourArea),
                status: YourAreaStateStatus.success,
              ),
            )
          : emit(
              state.copyWith(
                yourArea: yourArea,
                status: YourAreaStateStatus.success,
              ),
            );
    } catch (e) {
      return emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: YourAreaStateStatus.failure,
        ),
      );
    }
  }
}
