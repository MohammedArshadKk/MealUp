import 'package:flutter/material.dart';
import 'package:meal_up/application/core/widgets/custom_text.dart';

class AppbarTextWidget extends StatelessWidget {
  const AppbarTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomText(
      text: 'MealUp', 
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
  }
}
