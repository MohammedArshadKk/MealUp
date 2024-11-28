import 'package:meal_up/data/repositories/search_meal_repo_impl.dart';
import 'package:meal_up/domain/entities/meal_entity.dart';
import 'package:meal_up/domain/repositories/search_repository.dart';

class SearchMealUsecase {
  final SearchRepository searchRepository = SearchMealRepoImpl();
  Future<List<MealEntity>> searchMeal(String searchText) async {
    return await searchRepository.searchMeal(searchText);
  }
}
