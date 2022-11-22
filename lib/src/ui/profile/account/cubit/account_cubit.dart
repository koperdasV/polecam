import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_cubit_state.dart';

class AccountCubit extends Cubit<AccountEditState> {
  AccountCubit() : super(AccountEditState(false));

  Future<void> editingAcc({
    required bool editingAccount,
  }) async {
    final bool account = false;

    emit(state.copyWith(editing: account));
  }
}
