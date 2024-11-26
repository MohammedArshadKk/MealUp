import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_up/application/core/utils/colors.dart';
import 'package:meal_up/application/core/widgets/custom_container.dart';
import 'package:meal_up/application/core/widgets/custom_text.dart';
import 'package:meal_up/application/features/selected_category/bloc/selected_catecory_bloc.dart';
import 'package:meal_up/application/features/selected_category/selected_category_screen.dart';
import 'package:meal_up/domain/entities/category_entity.dart';

class CatecoryWidget extends StatelessWidget {
  const CatecoryWidget({super.key, required this.category});
  final CategoryEntity category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SelectedCatecoryBloc(),
            child: 
                SelectedCategoryScreen(selectedCatecoryName: category.category),
          ),
        ));
      },
      child: CustomContainer(
        height: 220,
        width: double.infinity,
        borderRadius: BorderRadius.circular(10),
        borderColor: Border.all(color: AppColors.lightTextColor),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                  height: 150,
                  width: 300,
                  child: Image.network(category.image)),
              CustomText(
                text: category.category,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
        ),
      ),
    );
  }
}
