import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';
part 'product_details_bloc.freezed.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  ProductDetailsBloc({required IDetailRepo detailsRepo})
      : _detailsRepo = detailsRepo,
        super(const _Initial()) {
    on<ProductDetailsEvent>(
      (event, emit) => event.map<Future<void>>(
        loadProduct: (event) => _loadProduct(event, emit),
      ),
    );
  }
  final IDetailRepo _detailsRepo;

  Future<void> _loadProduct(
    _LoadProduct event,
    Emitter<ProductDetailsState> emit,
  ) async {
    try {
      await Future.delayed(Duration(milliseconds: 300));
      final productDetails = await _detailsRepo.fetchProductDetails(
        id: event.productId,
        type: event.productType,
      );
      if (productDetails != null) {
        return emit(ProductDetailsState.loaded(productDetails: productDetails));
      } else {
        return emit(const ProductDetailsState.notFound());
      }
    } catch (e) {
      return emit(ProductDetailsState.error(errorMessage: e.toString()));
    }
  }
}
