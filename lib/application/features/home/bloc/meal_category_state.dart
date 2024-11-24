part of 'meal_category_bloc.dart';

@immutable
abstract class MealCategoryState {}

final class MealCategoryInitial extends MealCategoryState {}

class LoadingState extends MealCategoryState {}

class MealCategoryLoadedState extends MealCategoryState {
  final List<CategoryEntity> categories;

  MealCategoryLoadedState({required this.categories});
}

class ErrorState extends MealCategoryState {
  final String error;

  ErrorState({required this.error});
}
