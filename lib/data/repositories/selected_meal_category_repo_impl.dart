import 'package:meal_up/data/datasources/selected_meal_category_datasourse.dart';
import 'package:meal_up/domain/entities/meal_entity.dart';
import 'package:meal_up/domain/entities/selected_catecory_meal_entity.dart';
import 'package:meal_up/domain/repositories/selected_category_repository.dart';

class SelectedMealCategoryRepoImpl implements SelectedCategoryRepository {
  final SelectedMealCategoryDatasourse selectedMealCategory =
      SelectedMealCategoryDatasourseImpl();
  @override
  Future<List<SelectedCatecoryMealEntity>> getSelectedMealCategory(
      String name) async {
    return await selectedMealCategory.getSelectedMealCategoryItomFromApi(name);
  }

  @override
  Future<MealEntity> getMealDetails(String id)async {
    return await selectedMealCategory.getMealDetailsFormApi(id);
  }
}
