import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_up/application/core/utils/colors.dart';
import 'package:meal_up/application/core/widgets/custom_container.dart';
import 'package:meal_up/application/core/widgets/custom_text.dart';
import 'package:meal_up/application/features/selected_category/bloc/selected_catecory_bloc.dart';
import 'package:meal_up/application/features/selected_category/meal_details_screen.dart';
import 'package:meal_up/domain/entities/selected_catecory_meal_entity.dart';

class ItomWidget extends StatelessWidget {
  const ItomWidget({super.key, required this.itom});
  final SelectedCatecoryMealEntity itom;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SelectedCatecoryBloc(), 
            child: MealDetailsScreen(id: itom.id),
          ),
        ));
      },
      child: CustomContainer(
        height: 152,
        width: double.infinity,
        borderRadius: BorderRadius.circular(10),
        borderColor:
            Border.all(color: AppColors.lightTextColor.withOpacity(0.2)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(itom.image),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  )
                ],
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: itom.name,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                  const SizedBox(height: 8),
                  CustomText(
                    text: 'Tap for details',
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
