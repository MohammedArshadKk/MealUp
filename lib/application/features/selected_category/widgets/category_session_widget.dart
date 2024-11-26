import 'package:flutter/material.dart';
import 'package:meal_up/application/core/utils/colors.dart';

class CategoryAndAreaSessionWidget extends StatelessWidget {
  const CategoryAndAreaSessionWidget(
      {super.key, required this.catogary, required this.area});
  final String catogary;
  final String area;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.white,
            child:
                Icon(Icons.restaurant, size: 18, color: AppColors.primaryColor),
          ),
          label: Text(area),
          backgroundColor: Colors.white,
          shadowColor: Colors.grey,
          elevation: 3,
        ),
        Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.white,
            child:
                Icon(Icons.fastfood, size: 18, color: AppColors.primaryColor),
          ),
          label: Text(catogary),
          backgroundColor: Colors.white,
          shadowColor: Colors.grey,
          elevation: 3,
        ),
      ],
    );
  }
}
