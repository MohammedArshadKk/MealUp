part of 'selected_catecory_bloc.dart';

@immutable
sealed class SelectedCatecoryState {}

final class SelectedCatecoryInitial extends SelectedCatecoryState {}

class LoadingState extends SelectedCatecoryState {}

class MealLoadedState extends SelectedCatecoryState {
  final List<SelectedCatecoryMealEntity> selectedMealItoms;

  MealLoadedState({required this.selectedMealItoms});
}

class ErrorState extends SelectedCatecoryState {
  final String error;

  ErrorState({required this.error});
}

class MealDetailsLoadedState extends SelectedCatecoryState {
  final MealEntity details;

  MealDetailsLoadedState({required this.details});
}
