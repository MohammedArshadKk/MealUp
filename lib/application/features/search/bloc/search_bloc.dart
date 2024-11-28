import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meal_up/domain/entities/meal_entity.dart';
import 'package:meal_up/domain/usecases/search_meal_usecase.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchMealEvent>(searchMealEvent);
  }

  FutureOr<void> searchMealEvent(
      SearchMealEvent event, Emitter<SearchState> emit) async {
    try {
      emit(LoadingState());

      List<MealEntity> meals =
          await SearchMealUsecase().searchMeal(event.searchText);
      log(meals.toString());
      if (meals.isEmpty) {
        emit(NoDataState());
      } else {
        emit(SearchMealLoadedState(meals: meals));
      }
    } catch (e) {
      log(e.toString());
      emit(ErrorState(error: e.toString()));
    }
  }
}
