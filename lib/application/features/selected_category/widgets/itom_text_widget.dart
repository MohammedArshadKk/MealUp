import 'package:flutter/material.dart';
import 'package:meal_up/application/core/widgets/custom_text.dart';

class ItomTextWidget extends StatelessWidget {
  const ItomTextWidget({super.key, required this.selectedCatecoryName});
  final String selectedCatecoryName;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: CustomText(
        text: '$selectedCatecoryName Meals',
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
