import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_up/application/core/utils/colors.dart';
import 'package:meal_up/application/core/widgets/custom_text.dart';
import 'package:meal_up/application/features/selected_category/bloc/selected_catecory_bloc.dart';
import 'package:meal_up/application/features/selected_category/widgets/itom_widget.dart';
import 'package:meal_up/domain/entities/selected_catecory_meal_entity.dart';

class MealItomsWidgets extends StatelessWidget {
  const MealItomsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SelectedCatecoryBloc, SelectedCatecoryState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          } else if (state is MealLoadedState) {
            return ListView.builder(
              itemCount: state.selectedMealItoms.length,
              itemBuilder: (context, index) {
                final SelectedCatecoryMealEntity item =
                    state.selectedMealItoms[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ItomWidget(
                    itom: item,
                  ),
                );
              },
            );
          } else if (state is ErrorState) {
            Center(
              child: CustomText(text: state.error),
            );
          }
          return Container();
        },
      ),
    );
  }
}
