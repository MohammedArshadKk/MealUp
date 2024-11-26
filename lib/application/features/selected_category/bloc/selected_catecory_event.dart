part of 'selected_catecory_bloc.dart';

@immutable
abstract class SelectedCatecoryEvent {}

class GetSelectedCatecoryMealItomsEvent extends SelectedCatecoryEvent {
  final String selectedCatecoryName;

  GetSelectedCatecoryMealItomsEvent({required this.selectedCatecoryName});
}
