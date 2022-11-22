import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_cubit_state.dart';

class AccountCubit extends Cubit<AccountEditState> {
  AccountCubit() : super(const AccountEditState(false)) {
    editingAcc(editingAccount: false);
  }

  Future<void> editingAcc({
    required bool editingAccount,
  }) async {
    emit(state.copyWith(editing: editingAccount));
  }
}
