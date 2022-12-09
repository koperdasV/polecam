part of 'details_bloc.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.loadProduct({
    required String productId,
    required String productType,
  }) = _LoadProduct;
}
