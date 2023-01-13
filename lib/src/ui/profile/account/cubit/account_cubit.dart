import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/statistics/statistics_widget.dart';

part 'account_cubit_state.dart';

class AccountCubit extends Cubit<AccountEditState> {
  AccountCubit()
      : super(
          const AccountEditState(index: {0: StatisticsWidget()}),
        ) {
    // editingAcc(editingAccount: false);
    // editingIndex(index: {0: const StatisticsWidget()});
  }

  void change() {
    return emit(
      state.copyWith(
        editing: !state.editing,
      ),
    );
  }

  Future<void> editingAcc({
    required bool editingAccount,
  }) async {
    emit(
      state.copyWith(
        editing: editingAccount,
      ),
    );
  }

  Future<void> editingIndex({
    required Map<int, Widget> index,
  }) async {
    emit(
      state.copyWith(
        index: index,
      ),
    );
  }
}
