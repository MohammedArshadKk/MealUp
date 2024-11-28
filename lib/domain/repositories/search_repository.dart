import 'package:meal_up/domain/entities/meal_entity.dart';

abstract class SearchRepository {
  Future<List<MealEntity>> searchMeal(String searchText);
}
