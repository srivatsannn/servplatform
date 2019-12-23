import 'package:servplatform/core/models/category/category.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class CategoriesRepository {
  Future<List<Category>> fetchCategories();
}
