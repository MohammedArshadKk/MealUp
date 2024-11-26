import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meal_up/domain/entities/meal_entity.dart';
import 'package:meal_up/domain/entities/selected_catecory_meal_entity.dart';
import 'package:meal_up/domain/usecases/selected_meal_categories_usecase.dart';
import 'package:meta/meta.dart';

part 'selected_catecory_event.dart';
part 'selected_catecory_state.dart';

class SelectedCatecoryBloc
    extends Bloc<SelectedCatecoryEvent, SelectedCatecoryState> {
  SelectedCatecoryBloc() : super(SelectedCatecoryInitial()) {
    on<GetSelectedCatecoryMealItomsEvent>(getSelectedCatecoryMealItomsEvent);
    on<GetMealDetailsEvent>(getMealDetailsEvent);
  }

  FutureOr<void> getSelectedCatecoryMealItomsEvent(
      GetSelectedCatecoryMealItomsEvent event,
      Emitter<SelectedCatecoryState> emit) async {
    try {
      emit(LoadingState());
      final List<SelectedCatecoryMealEntity> selectedMealItoms =
          await SelectedMealCategoriesUsecase()
              .getSelectedMealItoms(event.selectedCatecoryName);
      log(selectedMealItoms[0].name.toString());
      emit(MealLoadedState(selectedMealItoms: selectedMealItoms));
    } catch (e) {
      log(e.toString());
      emit(ErrorState(error: e.toString()));
    }
  }

  FutureOr<void> getMealDetailsEvent(
      GetMealDetailsEvent event, Emitter<SelectedCatecoryState> emit) async {
    try {
      emit(LoadingState());
      final MealEntity mealDetails =
          await SelectedMealCategoriesUsecase().getMealDetailsUsecase(event.id);
      log(mealDetails.name);
      emit(MealDetailsLoadedState(details: mealDetails));
    } catch (e) {
      log(e.toString());
      emit(ErrorState(error: e.toString()));
    }
  }
}
