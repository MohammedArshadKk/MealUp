part of 'search_bloc.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

class LoadingState extends SearchState {}

class SearchMealLoadedState extends SearchState {
  final List<MealEntity> meals;

  SearchMealLoadedState({required this.meals});
}

class ErrorState extends SearchState {
  final String error;

  ErrorState({required this.error});
}

class NoDataState extends SearchState {}
