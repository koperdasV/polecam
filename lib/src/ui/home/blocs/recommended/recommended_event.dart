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

class SearchEvent extends RecommendedEvent {
  const SearchEvent({required this.text});

  final String text;

  @override
  List<Object> get props => [text];
}
