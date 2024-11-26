import 'package:meal_up/data/repositories/selected_meal_category_repo_impl.dart';
import 'package:meal_up/domain/entities/meal_entity.dart';
import 'package:meal_up/domain/entities/selected_catecory_meal_entity.dart';
import 'package:meal_up/domain/repositories/selected_category_repository.dart';

class SelectedMealCategoriesUsecase {
  SelectedCategoryRepository selectedCategory = SelectedMealCategoryRepoImpl();
  Future<List<SelectedCatecoryMealEntity>> getSelectedMealItoms(
      String slectedCatocaryName) async {
    return await selectedCategory.getSelectedMealCategory(slectedCatocaryName);
  }

  Future<MealEntity> getMealDetailsUsecase(String id) async {
    return await selectedCategory.getMealDetails(id);
  }
}
