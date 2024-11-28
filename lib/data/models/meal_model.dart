import 'package:meal_up/domain/entities/meal_entity.dart';

class MealModel extends MealEntity {
  MealModel(
      {required super.id,
      required super.name,
      required super.category,
      required super.area,
      required super.instructions,
      required super.image,
      required super.source});

  factory MealModel.fromMap(Map<String, dynamic> map) {
    return MealModel(
      id: map['idMeal'] ?? '',
      name: map['strMeal'] ?? '',
      category: map['strCategory'] ?? '',
      area: map['strArea'] ?? '',
      instructions: map['strInstructions'] ?? '',
      image: map['strMealThumb'] ?? '',
      source: map['strSource'] ?? '',
    );
  }
}
