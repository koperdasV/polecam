import 'package:equatable/equatable.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';

enum RecommendedStateStatus { initial, loading, success, failure }

class RecommendedState extends Equatable {
  const RecommendedState({
    this.status = RecommendedStateStatus.initial,
    this.errorMessage = '',
    required this.recommended,
  });

  final RecommendedStateStatus status;
  final String errorMessage;
  final List<RecommendedModel> recommended;

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        recommended,
      ];

  RecommendedState copyWith({
    RecommendedStateStatus? status,
    String? errorMessage,
    List<RecommendedModel>? recommended,
  }) {
    return RecommendedState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      recommended: recommended ?? this.recommended,
    );
  }
}
