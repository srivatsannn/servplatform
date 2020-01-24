import 'package:servplatform/core/models/category/category.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class CategoriesRepository {
  Future<List<Category>> fetchCategories();
  Future<Category> getCategoryById(String id) ;
  Future removeCategory(String id);
  Future updateCategory(Category data, String id);
  Future addCategory(Category data) ;


}
