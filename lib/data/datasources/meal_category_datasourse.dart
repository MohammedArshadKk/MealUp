import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:meal_up/application/core/utils/constants.dart';
import 'package:meal_up/data/models/category_model.dart';

abstract class MealCategoryDatasourse {
  Future<List<CategoryModel>> getCategoryFromApi();
}

class MealCategoryDatasourseImpl implements MealCategoryDatasourse {
  final Dio dio = Dio();
  @override
  Future<List<CategoryModel>> getCategoryFromApi() async {
    try {
      final response = await dio.get(categoryUrl);
      if (response.statusCode == 200) {
        log('Api call successfull');
        final List<dynamic> data = response.data as List<dynamic>;

        final List<CategoryModel> categories = data
            .map((category) =>
                CategoryModel.fromMap(category as Map<String, dynamic>))
            .toList();
        return categories;
      } else {
        throw Exception('Api call filed');
      }
    } catch (e) {
      throw Exception('some error happend');
    }
  }
}
