import 'package:flutter/material.dart';
import 'package:meal_up/application/core/widgets/custom_container.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 100,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: TextFormField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              prefixIcon: const Icon(Icons.search),
              labelText: 'Search Meal...'),
        ),
      ),
    );
  }
}
