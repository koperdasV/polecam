part of 'recommended_bloc.dart';

enum RecommendedStateStatus { initial, loading, success, failure }

class RecommendedState extends Equatable {
  const RecommendedState({
    this.status = RecommendedStateStatus.initial,
    this.errorMessage = '',
    required this.recommended,
    this.position,
  });

  final RecommendedStateStatus status;
  final String errorMessage;
  final List<RecommendedModel> recommended;
  final Position? position;

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        recommended,
        position,
      ];

  RecommendedState copyWith({
    RecommendedStateStatus? status,
    String? errorMessage,
    List<RecommendedModel>? recommended,
    Position? position,
  }) {
    return RecommendedState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      recommended: recommended ?? this.recommended,
      position: position ?? this.position,
    );
  }
}
