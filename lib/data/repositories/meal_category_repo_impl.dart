import 'package:meal_up/data/datasources/meal_category_datasourse.dart';
import 'package:meal_up/domain/entities/category_entity.dart';
import 'package:meal_up/domain/repositories/categories_repository.dart';

class MealCategoryRepoImpl implements CategoriesRepository {
  MealCategoryDatasourse mealCategoryDatasourse = MealCategoryDatasourseImpl();
  @override
  Future<List<CategoryEntity>> getMealCategoriesDatasource() async {
    final categories = await mealCategoryDatasourse.getCategoryFromApi();
    return categories;
  }
}
