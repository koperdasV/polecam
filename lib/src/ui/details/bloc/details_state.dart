part of 'details_bloc.dart';


@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.initial() = _Initial;
  const factory DetailsState.loaded({
    required DetailModel productDetails,
  }) = _Loaded;
  const factory DetailsState.error({required String errorMessage}) =
      _Error;
  const factory DetailsState.notFound() = _NotFound;
}
