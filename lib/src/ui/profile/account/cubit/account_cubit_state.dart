part of 'account_cubit.dart';

class AccountEditState {
  const AccountEditState({
    this.editing = false,
    required this.index,
  });

  final bool editing;
  final Map<int, Widget> index;

  AccountEditState copyWith({
    bool? editing,
    Map<int, Widget>? index,
  }) {
    return AccountEditState(
      editing: editing ?? this.editing,
      index: index ?? this.index,
    );
  }
}
