import 'package:meal_up/domain/entities/selected_catecory_meal_entity.dart';

class SelectedCatecoryMealModel extends SelectedCatecoryMealEntity {
  SelectedCatecoryMealModel(
      {required super.id, required super.name, required super.image});

  factory SelectedCatecoryMealModel.fromMap(Map<String, dynamic> map) {
    return SelectedCatecoryMealModel(
        id: map['idMeal'], name: map['strMeal'], image: map['strMealThumb']);
  }
}
