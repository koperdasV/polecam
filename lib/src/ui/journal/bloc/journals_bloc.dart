import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:polec/src/ui/journal/data/journals_repository.dart';

part 'journals_event.dart';
part 'journals_state.dart';

class JournalsBloc extends Bloc<JournalsEvent, JournalsState> {
  JournalsBloc({required IJournalsRepo journalsRepo})
      : _journalsRepo = journalsRepo,
        super(const JournalsState()) {
    on<LoadJournals>(_onLoadJournalsToState);
    on<RefreshJournals>(_onRefreshJournalsToState);
  }

  final IJournalsRepo _journalsRepo;

  Future<void> _onLoadJournalsToState(
    LoadJournals event,
    Emitter<JournalsState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: JournalsStateStatus.loading,
        ),
      );

      final List<String> journals =
          await _journalsRepo.fetchJournals(state.page);
         
      return journals.isNotEmpty
          ? emit(
              state.copyWith(
                journals: List.of(state.journals)..addAll(journals),
                status: JournalsStateStatus.success,
                canLoadMore: true,
                page: state.page + 1,
              ),
            )
          : emit(
              state.copyWith(
                journals: journals,
                status: JournalsStateStatus.success,
                canLoadMore: false,
              ),
            );
    } catch (e) {
      return emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: JournalsStateStatus.failure,
        ),
      );
    }
  }

  Future<void> _onRefreshJournalsToState(
      RefreshJournals event, Emitter<JournalsState> emit) async {
    emit(JournalsState(status: JournalsStateStatus.loading));
    add(LoadJournals());
  }
}
