import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_up/application/core/utils/colors.dart';
import 'package:meal_up/application/core/widgets/custom_text.dart';
import 'package:meal_up/application/features/home/bloc/meal_category_bloc.dart';
import 'package:meal_up/application/features/home/widgets/catecory_widget.dart';
import 'package:meal_up/domain/entities/category_entity.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<MealCategoryBloc, MealCategoryState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          } else if (state is MealCategoryLoadedState) {
            return ListView.builder(
              itemCount: state.categories.length,
              itemBuilder: (context, index) {
                final CategoryEntity category = state.categories[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CatecoryWidget(
                    category: category,
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
