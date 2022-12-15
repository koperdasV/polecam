part of 'recommended_bloc.dart';

class RecommendedEvent extends Equatable {
  const RecommendedEvent();
  @override
  List<Object?> get props => [];
}

class LoadRecommended extends RecommendedEvent {
  const LoadRecommended();
  @override
  List<Object?> get props => [];
}

class VisiblePoint extends RecommendedEvent {
  const VisiblePoint(this.id);

  final String id;
  @override
  List<Object?> get props => [id];
}
