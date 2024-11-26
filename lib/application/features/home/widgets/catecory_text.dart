import 'package:flutter/material.dart';
import 'package:meal_up/application/core/widgets/custom_text.dart';

class CatecoryText extends StatelessWidget {
  const CatecoryText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topLeft,
      child: CustomText(
        text: 'Meal categories',
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
