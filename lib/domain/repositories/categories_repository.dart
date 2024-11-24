import 'package:meal_up/domain/entities/category_entity.dart';

abstract class CategoriesRepository {
  Future<List<CategoryEntity>> getMealCategoriesDatasource();
}
