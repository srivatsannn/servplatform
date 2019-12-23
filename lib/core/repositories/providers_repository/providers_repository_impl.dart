import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/providers_repository/providers_repository.dart';
import 'package:servplatform/core/models/provider/provider.dart';
import 'package:servplatform/core/providers/firebase/firebase_provider.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class ProvidersRepositoryImpl implements ProvidersRepository {
  final _firebaseProvider = locator<FirebaseProvider>();
  List<Provider> provders;

  @override
  Future<List<Provider>> fetchProviders() async {
    try {
      final providersJsonData = await _firebaseProvider
          .getDataCollection(FirebasePaths.recommended_providers);
      final providers =
          providersJsonData.map((doc) => Provider.fromMap(doc.data)).toList();
      return providers;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_provider);
    }
  }

  Stream<QuerySnapshot> fetchProvidersAsStream() {
    return _firebaseProvider
        .streamDataCollection(FirebasePaths.recommended_providers);
  }

  Future<Provider> getProviderById(String id) async {
    var doc = await _firebaseProvider.getDocumentById(
        FirebasePaths.recommended_Providers, id);
    return Provider.fromMap(doc.data);
  }

  Future removeProvider(String id) async {
    await _firebaseProvider.removeDocument(
        FirebasePaths.recommended_providers, id);
    return;
  }

  Future updateProvider(Provider data, String id) async {
    await _firebaseProvider.updateDocument(
        FirebasePaths.recommended_providers, data.toMap(), id);
    return;
  }

  Future addProvider(Provider data) async {
    var result = await _firebaseProvider.addDocument(
        FirebasePaths.recommended_providers, data.toMap());

    return;
  }
}
