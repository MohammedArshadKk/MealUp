import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:meal_up/application/core/utils/constants.dart';
import 'package:meal_up/data/models/meal_model.dart';
import 'package:meal_up/data/models/selected_catecory_meal_model.dart';

abstract class SelectedMealCategoryDatasourse {
  Future<List<SelectedCatecoryMealModel>> getSelectedMealCategoryItomFromApi(
      String categoryname);

  Future<MealModel> getMealDetailsFormApi(String id);
}

class SelectedMealCategoryDatasourseImpl
    implements SelectedMealCategoryDatasourse {
  final Dio dio = Dio();
  @override
  Future<List<SelectedCatecoryMealModel>> getSelectedMealCategoryItomFromApi(
      String categoryname) async {
    try {
      final response = await dio.get(filterbyCategoryUrl + categoryname);
      if (response.statusCode == 200) {
        log('Api call successfull');
        final List<dynamic> data = response.data['meals'] as List<dynamic>;
        return data
            .map((meals) => SelectedCatecoryMealModel.fromMap(meals))
            .toList();
      } else {
        throw Exception('Api call faild ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('some error happend : $e');
    }
  }

  @override
  Future<MealModel> getMealDetailsFormApi(String id) async {
    try {
      final response = await dio.get(fullMalDetailsUrl + id);
      if (response.statusCode == 200) {
        log('Api call is successfull');
        final List<dynamic> data = response.data['meals'] as List<dynamic>;
        return MealModel.fromMap(data[0]);
      } else {
        throw Exception('Api call faild');
      }
    } catch (e) {
      throw Exception('some error happend $e');
    }
  }
}
