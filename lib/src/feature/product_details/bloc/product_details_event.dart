part of 'product_details_bloc.dart';

@freezed
class ProductDetailsEvent with _$ProductDetailsEvent {
  const factory ProductDetailsEvent.loadProduct({
    required String productId,
    required String productType,
  }) = _LoadProduct;
}
