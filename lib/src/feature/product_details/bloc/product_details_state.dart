part of 'product_details_bloc.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = _Initial;
  const factory ProductDetailsState.loaded({
    required DetailModel productDetails,
  }) = _Loaded;
  const factory ProductDetailsState.error({required String errorMessage}) =
      _Error;
  const factory ProductDetailsState.notFound() = _NotFound;
}
