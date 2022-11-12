import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:polec/src/ui/home/data/categories_repository.dart';
import 'package:polec/src/ui/home/data/recommended_repository.dart';
import 'package:polec/src/ui/home/model/categories/categories_model.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc({
    required ICategoriesRepo categoriesRepo,
    required IRecommendedRepo recommendedRepo,
  })  : _categoriesRepo = categoriesRepo,
  _recommendedRepo = recommendedRepo,
        super(const CategoriesState()) {
    on<LoadCategories>(_onLoadCategories);
    on<LoadRecommended>(_onLoadRecommended);
    on<LoadYourArea>(_onLoadYourArea);
  }
  final ICategoriesRepo _categoriesRepo;
  final IRecommendedRepo _recommendedRepo;

  Future<void> _onLoadCategories(
    LoadCategories event,
    Emitter<CategoriesState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: CategoriesStateStatus.loading,
        ),
      );

      final categories = await _categoriesRepo.fetchCategories();

      return categories.isNotEmpty
          ? emit(
              state.copyWith(
                categories: List.of(state.categories)..addAll(categories),
                status: CategoriesStateStatus.success,
              ),
            )
          : emit(
              state.copyWith(
                categories: categories,
                status: CategoriesStateStatus.success,
              ),
            );
    } catch (e) {
      return emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: CategoriesStateStatus.failure,
        ),
      );
    }
  }

  Future<void> _onLoadRecommended(
    LoadRecommended event,
    Emitter<CategoriesState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: CategoriesStateStatus.loading,
        ),
      );

      final recommended = await _recommendedRepo.fetchRecommended();

      return recommended.isNotEmpty
          ? emit(
              state.copyWith(
                recommended: List.of(state.recommended)..addAll(recommended),
                status: CategoriesStateStatus.success,
              ),
            )
          : emit(
              state.copyWith(
                recommended: recommended,
                status: CategoriesStateStatus.success,
              ),
            );
    } catch (e) {
      return emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: CategoriesStateStatus.failure,
        ),
      );
    }
  }

  Future<void> _onLoadYourArea(
    LoadYourArea event,
    Emitter<CategoriesState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: CategoriesStateStatus.loading,
        ),
      );

      final yourArea = await _categoriesRepo.fetchYourArea();

      return yourArea.isNotEmpty
          ? emit(
              state.copyWith(
                yourArea: List.of(state.yourArea)..addAll(yourArea),
                status: CategoriesStateStatus.success,
              ),
            )
          : emit(
              state.copyWith(
                yourArea: yourArea,
                status: CategoriesStateStatus.success,
              ),
            );
    } catch (e) {
      return emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: CategoriesStateStatus.failure,
        ),
      );
    }
  }
}
