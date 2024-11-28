import 'package:flutter/material.dart';
import 'package:meal_up/application/core/widgets/custom_text.dart';
import 'package:meal_up/application/features/search/widgets/search_meal_items.dart';
import 'package:meal_up/application/features/search/widgets/search_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(text: 'Search'),
      ),
      body: const Column(
        children: [
          SearchWidget(),
          SearchMealItomsWidgets(),
        ],
      ),
    );
  }
}
