part of 'journals_bloc.dart';

enum JournalsStateStatus { initial, loading, success, failure }

class JournalsState extends Equatable {
  const JournalsState({
    this.status = JournalsStateStatus.initial,
    this.errorMessage = '',
    this.canLoadMore = false,
    required this.journals,
    this.page = 1,
  });

  final JournalsStateStatus status;
  final String errorMessage;
  final bool canLoadMore;
  final int page;
  final List<JournalModel> journals;

  @override
  List<Object?> get props =>
      [status, errorMessage, canLoadMore, journals, page];

  JournalsState copyWith({
    JournalsStateStatus? status,
    String? errorMessage,
    bool? canLoadMore,
    int? page,
    List<JournalModel>? journals,
  }) {
    return JournalsState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      canLoadMore: canLoadMore ?? this.canLoadMore,
      page: page ?? this.page,
      journals: journals ?? this.journals,
    );
  }
}
