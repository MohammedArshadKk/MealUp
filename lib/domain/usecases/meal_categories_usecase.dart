import 'package:meal_up/data/repositories/meal_category_repo_impl.dart';
import 'package:meal_up/domain/entities/category_entity.dart';
import 'package:meal_up/domain/repositories/categories_repository.dart';

class MealCategoriesUsecase {
  CategoriesRepository categoriesRepository = MealCategoryRepoImpl();
  Future<List<CategoryEntity>> getMealCategories() async {
    final categories = await categoriesRepository.getMealCategoriesDatasource();
    return categories;
  }
}
