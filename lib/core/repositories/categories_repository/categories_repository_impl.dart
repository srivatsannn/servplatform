import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/categories_repository/categories_repository.dart';
import 'package:servplatform/core/models/category/category.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Category> categories;

  @override
  Future<List<Category>> fetchCategories() async {
    try {
      final categoriesJsonData = await _firebaseService
          .getDataCollection(FirebasePaths.categories);
      final categories =
          categoriesJsonData.map((doc) => Category.fromMap(doc.data)).toList();
      return categories;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchCategoriesAsStream() {
    return _firebaseService
        .streamDataCollection(FirebasePaths.categories);
  }

  Future<Category> getCategoryById(String id) async {
    var doc = await _firebaseService.getDocumentById(
        FirebasePaths.categories, id);
    return Category.fromMap(doc.data);
  }

  Future removeCategory(String id) async {
    await _firebaseService.removeDocument(
        FirebasePaths.categories, id);
    return;
  }

  Future updateCategory(Category data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.categories, data.toMap(), id);
    return;
  }

  Future addCategory(Category data) async {
    var result = await _firebaseService.addDocument(
        FirebasePaths.categories, data.toMap());

    return;
  }
}
