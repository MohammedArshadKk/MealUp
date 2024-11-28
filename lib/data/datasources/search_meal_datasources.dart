import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:meal_up/application/core/utils/constants.dart';
import 'package:meal_up/data/models/meal_model.dart';

abstract class SearchMealDatasources {
  Future<List<MealModel>> searchMealFromApi(String searchText);
}

class SearchMealDatasourcesImpl implements SearchMealDatasources {
  final Dio dio = Dio();
  @override
  Future<List<MealModel>> searchMealFromApi(String searchText) async {
    try {
      final response = await dio.get(searchUrl + searchText);
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        if (response.data['meals'] == null) {
          return [];
        }
        final List<dynamic> data = response.data['meals'] as List<dynamic>;

        return data.map((meal) => MealModel.fromMap(meal)).toList();
      } else {
        throw Exception('api call failed');
      }
    } catch (e) {
      throw Exception('some error :$e');
    }
  }
}
