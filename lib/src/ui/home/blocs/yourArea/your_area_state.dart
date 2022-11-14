part of 'your_area_bloc.dart';

enum YourAreaStateStatus { initial, loading, success, failure }

class YourAreaState extends Equatable {
  const YourAreaState({
    this.status = YourAreaStateStatus.initial,
    this.errorMessage = '',
    required this.yourArea,
  });

  final YourAreaStateStatus status;
  final String errorMessage;
  final List<YourAreaModel> yourArea;

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        yourArea,
      ];

  YourAreaState copyWith({
    YourAreaStateStatus? status,
    String? errorMessage,
    List<YourAreaModel>? yourArea,
  }) {
    return YourAreaState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      yourArea: yourArea ?? this.yourArea,
    );
  }
}
