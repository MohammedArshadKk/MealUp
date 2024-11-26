import 'package:meal_up/domain/entities/category_entity.dart';

class CategoryModel extends CategoryEntity {
  CategoryModel(
      {required super.id,
      required super.category,
      required super.image,
      required super.description});

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
        id: map['idCategory'] as String,
        category: map['strCategory'] as String,
        image: map['strCategoryThumb'] as String,
        description: map['strCategoryDescription'] as String);
  }
}
