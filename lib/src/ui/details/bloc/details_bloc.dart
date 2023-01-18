import 'dart:async';

import 'package:bloc/bloc.dart';
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
      final productDetails = await _detailsRepo.fetchProductDetails(
        id: event.productId,
        type: event.productType,
      );
        return emit(DetailsState.loaded(productDetails: productDetails));
      
    } catch (e) {
      return emit(DetailsState.error(errorMessage: e.toString()));
    }
  }
}
