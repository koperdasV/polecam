part of 'categories_bloc.dart';

enum CategoriesStateStatus { initial, loading, success, failure }

class CategoriesState extends Equatable {
  const CategoriesState({
    this.status = CategoriesStateStatus.initial,
    this.errorMessage = '',
    required this.categories,
  });

  final CategoriesStateStatus status;
  final String errorMessage;
  final List<CategoriesModel> categories;

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        categories,
      ];

  CategoriesState copyWith({
    CategoriesStateStatus? status,
    String? errorMessage,
    List<CategoriesModel>? categories,
    List<RecommendedModel>? recommended,
    List<YourAreaModel>? yourArea,
  }) {
    return CategoriesState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      categories: categories ?? this.categories,
    );
  }
}
