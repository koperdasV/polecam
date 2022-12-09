part of 'details_bloc.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.loadProduct({
    required String productId,
    required String productType,
  }) = _LoadProduct;
}


// class DetailsEvent extends Equatable {
//   const DetailsEvent();

//   @override
//   List<Object?> get props => [];
// }

// class LoadDetails extends DetailsEvent {
//   const LoadDetails({
//     this.id = '',
//   });

//   final String id;

//   @override
//   List<Object?> get props => [];
// }
