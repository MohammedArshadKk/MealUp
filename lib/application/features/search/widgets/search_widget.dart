import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_up/application/core/services/debounce.dart';
import 'package:meal_up/application/core/widgets/custom_container.dart';
import 'package:meal_up/application/features/search/bloc/search_bloc.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 100,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: TextFormField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              prefixIcon: const Icon(Icons.search),
              labelText: 'Search Meal...'),
          onChanged: (value) {
            Debounce().runDebounce(() {
              context
                  .read<SearchBloc>()
                  .add(SearchMealEvent(searchText: value));
            });
          },
        ),
      ),
    );
  }
}
