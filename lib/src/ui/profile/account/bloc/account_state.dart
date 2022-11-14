part of 'account_bloc.dart';

enum AccountStateStatus { initial, loading, success, failure }

class AccountState extends Equatable {
  const AccountState({
    this.status = AccountStateStatus.initial,
    this.errorMessage = '',
    required this.accountModel,
  });

  final AccountStateStatus status;
  final String errorMessage;
  final AccountModel accountModel;

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        accountModel,
      ];

  AccountState copyWith({
    AccountStateStatus? status,
    String? errorMessage,
    AccountModel? accountModel,
  }) {
    return AccountState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      accountModel: accountModel ?? this.accountModel,
    );
  }
}
