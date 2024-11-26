import 'package:meal_up/domain/entities/meal_entity.dart';
import 'package:meal_up/domain/entities/selected_catecory_meal_entity.dart';

abstract class SelectedCategoryRepository {
  Future<List<SelectedCatecoryMealEntity>> getSelectedMealCategory(String name);
  Future<MealEntity> getMealDetails(String id);
}
