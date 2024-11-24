import 'package:meal_up/domain/entities/category_entity.dart';

class CategoryModel extends CategoryEntity {
  CategoryModel(
      {required super.id,
      required super.category,
      required super.image,
      required super.description});

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
        id: map['idCategory'],
        category: map['strCategory'],
        image: map['strCategoryThumb'],
        description: map['strCategoryDescription']);
  }
}
