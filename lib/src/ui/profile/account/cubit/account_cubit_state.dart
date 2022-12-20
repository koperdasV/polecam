part of 'account_cubit.dart';

class AccountEditState {
  const AccountEditState(
    this.editing,
    this.index,
  );

  final bool editing;
  final Map<int, Widget> index;

  AccountEditState copyWith({
    bool? editing,
    Map<int, Widget>? index,
  }) {
    return AccountEditState(
      editing ?? this.editing,
      index ?? this.index,
    );
  }
}
