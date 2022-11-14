import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';
import 'package:polec/src/ui/profile/account/data/account_repository.dart';
import 'package:polec/src/ui/profile/account/model/account_model.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc({required IAccountRepo accountRepo})
      : _accountRepo = accountRepo,
        super(const AccountState(accountModel: AccountModel())) {
    on<LoadAccount>(_onLoadAccountToState);
  }
  final IAccountRepo _accountRepo;

  Future<void> _onLoadAccountToState(
    LoadAccount event,
    Emitter<AccountState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
            status: AccountStateStatus.loading, errorMessage: 'loading'),
      );

      final accountModel = await _accountRepo.fetchDetails();

      return emit(
        state.copyWith(
          accountModel: accountModel,
          status: AccountStateStatus.success,
        ),
      );
    } catch (e) {
      return emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: AccountStateStatus.failure,
        ),
      );
    }
  }
}
