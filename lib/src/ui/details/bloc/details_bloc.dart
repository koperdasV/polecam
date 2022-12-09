import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';

part 'details_event.dart';
part 'details_state.dart';
part 'details_bloc.freezed.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc({required IDetailRepo detailsRepo})
      : _detailsRepo = detailsRepo,
        super(const _Initial()) {
    on<DetailsEvent>(
      (event, emit) => event.map<Future<void>>(
        loadProduct: (event) => _loadProduct(event, emit),
      ),
    );
  }
  final IDetailRepo _detailsRepo;

  Future<void> _loadProduct(
    _LoadProduct event,
    Emitter<DetailsState> emit,
  ) async {
    try {
      await Future.delayed(Duration(milliseconds: 300));
      final productDetails =
          await _detailsRepo.fetchProductDetails(id: event.productId, type: event.productType);
      if (productDetails != null) {
        return emit(DetailsState.loaded(productDetails: productDetails));
      } else {
        return emit(const DetailsState.notFound());
      }
    } catch (e) {
      return emit(DetailsState.error(errorMessage: e.toString()));
    }
  }
}



// class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
//   DetailsBloc({required IDetailRepo detailsRepo})
//       : _detailsRepo = detailsRepo,
//         super(const DetailsState(detailModel: DetailModel())) {
//     on<LoadDetails>(_onLoadDetailsToState);
//   }

//   final IDetailRepo _detailsRepo;

//   Future<void> _onLoadDetailsToState(
//     LoadDetails event,
//     Emitter<DetailsState> emit,
//   ) async {
//     try {
//       emit(
//         state.copyWith(
//             status: DetailsStateStatus.loading, errorMessage: 'loading'),
//       );

//       final detailModel = await _detailsRepo.fetchDetails();

//       return emit(
//         state.copyWith(
//           detailModel: detailModel,
//           status: DetailsStateStatus.success,
//         ),
//       );
//     } catch (e) {
//       return emit(
//         state.copyWith(
//           errorMessage: e.toString(),
//           status: DetailsStateStatus.failure,
//         ),
//       );
//     }
//   }
// }
