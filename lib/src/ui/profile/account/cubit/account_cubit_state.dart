// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'account_cubit.dart';

class AccountEditState {
  const AccountEditState(
    this.editing,
  );

  final bool editing;

  AccountEditState copyWith({
    bool? editing,
  }) {
    return AccountEditState(
      editing ?? this.editing,
    );
  }
}
