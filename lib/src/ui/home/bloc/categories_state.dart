part of 'categories_bloc.dart';

enum CategoriesStateStatus { initial, loading, success, failure }

class CategoriesState extends Equatable {
  const CategoriesState({
    this.status = CategoriesStateStatus.initial,
    this.errorMessage = '',
    this.categories = const [],
    this.recommended = const [],
    this.yourArea = const [],
  });

  final CategoriesStateStatus status;
  final String errorMessage;
  final List<CategoriesModel> categories;
  final List<RecommendedModel> recommended;
  final List<CategoriesModel> yourArea;

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        categories,
        recommended,
        yourArea,
      ];

  CategoriesState copyWith({
    CategoriesStateStatus? status,
    String? errorMessage,
    List<CategoriesModel>? categories,
    List<RecommendedModel>? recommended,
    List<CategoriesModel>? yourArea,
  }) {
    return CategoriesState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      categories: categories ?? this.categories,
      recommended: recommended ?? this.recommended,
      yourArea: yourArea ?? this.yourArea,
    );
  }
}
