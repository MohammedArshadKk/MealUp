import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_up/application/core/utils/colors.dart';
import 'package:meal_up/application/core/widgets/custom_text.dart';
import 'package:meal_up/application/features/search/bloc/search_bloc.dart';
import 'package:meal_up/application/features/selected_category/widgets/itom_widget.dart';
import 'package:meal_up/domain/entities/meal_entity.dart';

class SearchMealItomsWidgets extends StatelessWidget {
  const SearchMealItomsWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state is SearchInitial) {
            return const Center(
              child: CustomText(text: 'Search for a meal'),
            );
          } else if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          } else if (state is SearchMealLoadedState) {
            return ListView.builder(
              itemCount: state.meals.length,
              itemBuilder: (context, index) {
                final MealEntity item = state.meals[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ItomWidget(
                    itom: item,
                  ),
                );
              },
            );
          } else if (state is NoDataState) {
            return const Center(
              child: CustomText(
                text: 'No search results',
              ),
            );
          } else if (state is ErrorState) {
            return Center(
              child: CustomText(text: state.error),
            );
          }
          return Container();
        },
      ),
    );
  }
}
