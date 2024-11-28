import 'package:meal_up/data/datasources/search_meal_datasources.dart';
import 'package:meal_up/domain/entities/meal_entity.dart';
import 'package:meal_up/domain/repositories/search_repository.dart';

class SearchMealRepoImpl extends SearchRepository {
  SearchMealDatasources searchMealDatasources = SearchMealDatasourcesImpl();
  @override
  Future<List<MealEntity>> searchMeal(String searchText) async {
    return await searchMealDatasources.searchMealFromApi(searchText);
  }
}
