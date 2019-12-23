import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/categories_repository/categories_repository.dart';
import 'package:servplatform/core/models/category/category.dart';
import 'package:servplatform/core/categories/firebase/firebase_category.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final _firebaseCategory = locator<FirebaseCategory>();
  List<Category> categories;

  @override
  Future<List<Category>> fetchCategories() async {
    try {
      final categoriesJsonData = await _firebaseCategory
          .getDataCollection(FirebasePaths.recommended_categories);
      final categories =
          categoriesJsonData.map((doc) => Category.fromMap(doc.data)).toList();
      return categories;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_category);
    }
  }

  Stream<QuerySnapshot> fetchCategoriesAsStream() {
    return _firebaseCategory
        .streamDataCollection(FirebasePaths.recommended_categories);
  }

  Future<Category> getCategoryById(String id) async {
    var doc = await _firebaseCategory.getDocumentById(
        FirebasePaths.recommended_categories, id);
    return Category.fromMap(doc.data);
  }

  Future removeCategory(String id) async {
    await _firebaseCategory.removeDocument(
        FirebasePaths.recommended_categories, id);
    return;
  }

  Future updateCategory(Category data, String id) async {
    await _firebaseCategory.updateDocument(
        FirebasePaths.recommended_categories, data.toMap(), id);
    return;
  }

  Future addCategory(Category data) async {
    var result = await _firebaseCategory.addDocument(
        FirebasePaths.recommended_categories, data.toMap());

    return;
  }
}
