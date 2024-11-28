import 'package:flutter/material.dart';
import 'package:meal_up/application/core/widgets/custom_text.dart';

class InstructionsWidget extends StatelessWidget {
  const InstructionsWidget({super.key, required this.instruction});
  final String instruction;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Cooking Instruction',
          fontWeight: FontWeight.bold,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(),
        ),
        const SizedBox(height: 8),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [AppColors.primaryColor, Colors.white],
            //   begin: Alignment.centerLeft,
            //   end: Alignment.centerRight,
            // ),
            color: Colors.grey[100], 
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  instruction,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
