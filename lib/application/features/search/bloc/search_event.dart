part of 'search_bloc.dart';

@immutable
sealed class SearchEvent {}

class SearchMealEvent extends SearchEvent {
  final String searchText;

  SearchMealEvent({required this.searchText});
}
