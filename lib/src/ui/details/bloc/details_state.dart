part of 'details_bloc.dart';

enum DetailsStateStatus { initial, loading, success, failure }

class DetailsState extends Equatable {
  const DetailsState({
    this.status = DetailsStateStatus.initial,
    this.errorMessage = '',
    // this.recommendations = const [],
    required this.detailModel,
  }) ;

  final DetailsStateStatus status;
  final String errorMessage;
  // final List<Recommendations> recommendations;
  final DetailModel detailModel;

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        // recommendations,
        detailModel,
      ];

  DetailsState copyWith({
    DetailsStateStatus? status,
    String? errorMessage,
    // List<Recommendations>? recommendations,
    DetailModel? detailModel,
  }) {
    return DetailsState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      // recommendations: recommendations ?? this.recommendations,
      detailModel: detailModel ?? this.detailModel,
    );
  }
}
