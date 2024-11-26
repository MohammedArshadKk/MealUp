import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'selected_catecory_event.dart';
part 'selected_catecory_state.dart';

class SelectedCatecoryBloc
    extends Bloc<SelectedCatecoryEvent, SelectedCatecoryState> {
  SelectedCatecoryBloc() : super(SelectedCatecoryInitial()) {
    on<GetSelectedCatecoryMealItomsEvent>(getSelectedCatecoryMealItomsEvent);
  }

  FutureOr<void> getSelectedCatecoryMealItomsEvent(
      GetSelectedCatecoryMealItomsEvent event,
      Emitter<SelectedCatecoryState> emit) async{
      try {
        
      } catch (e) {
        log(e.toString());
      }
      }
}
