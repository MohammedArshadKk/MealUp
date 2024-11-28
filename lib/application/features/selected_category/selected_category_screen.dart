import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_up/application/features/selected_category/bloc/selected_catecory_bloc.dart';
import 'package:meal_up/application/features/selected_category/widgets/itom_text_widget.dart';
import 'package:meal_up/application/features/selected_category/widgets/meal_itoms_widget.dart';

class SelectedCategoryScreen extends StatefulWidget {
  const SelectedCategoryScreen({super.key, required this.selectedCatecoryName});
  final String selectedCatecoryName;
  @override
  State<SelectedCategoryScreen> createState() => _SelectedCategoryScreenState();
}

class _SelectedCategoryScreenState extends State<SelectedCategoryScreen> {
  @override
  void initState() {
    context.read<SelectedCatecoryBloc>().add(GetSelectedCatecoryMealItomsEvent(
        selectedCatecoryName: widget.selectedCatecoryName));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
          title: ItomTextWidget(
              selectedCatecoryName: widget.selectedCatecoryName)),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            MealItomsWidgets(),
          ],
        ),
      ),
    );
  }
}
