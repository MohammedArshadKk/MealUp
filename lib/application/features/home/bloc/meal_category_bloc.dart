import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meal_up/domain/entities/category_entity.dart';
import 'package:meal_up/domain/usecases/meal_categories_usecase.dart';
import 'package:meta/meta.dart';

part 'meal_category_event.dart';
part 'meal_category_state.dart';

class MealCategoryBloc extends Bloc<MealCategoryEvent, MealCategoryState> {
  MealCategoryBloc() : super(MealCategoryInitial()) {
    on<GetMealCategoryEvent>(getMealCategoryEvent);
  }

  FutureOr<void> getMealCategoryEvent(
      GetMealCategoryEvent event, Emitter<MealCategoryState> emit) async {
    try {
      final categories = await MealCategoriesUsecase().getMealCategories();
      emit(MealCategoryLoadedState(categories: categories));
    } catch (e) {
      log(e.toString());
      emit(ErrorState(error: e.toString()));
    }
  }
}
