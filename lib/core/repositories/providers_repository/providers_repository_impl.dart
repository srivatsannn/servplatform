import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/providers_repository/providers_repository.dart';
import 'package:servplatform/core/models/provider/provider.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class ProvidersRepositoryImpl implements ProvidersRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Provider> provders;

  @override
  Future<List<Provider>> fetchProviders() async {
    try {
      final providersJsonData =
          await _firebaseService.getDataCollection(FirebasePaths.providers);
      final providers =
          providersJsonData.map((doc) => Provider.fromMap(doc.data)).toList();
      return providers;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchProvidersAsStream() {
    return _firebaseService.streamDataCollection(FirebasePaths.providers);
  }

  Future<Provider> getProviderById(String id) async {
    var doc =
        await _firebaseService.getDocumentById(FirebasePaths.providers, id);
    return Provider.fromMap(doc.data);
  }

  Future removeProvider(String id) async {
    await _firebaseService.removeDocument(FirebasePaths.providers, id);
    return;
  }

  Future updateProvider(Provider data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.providers, data.toMap(), id);
    return;
  }

  Future addProvider(Provider data) async {
    var result = await _firebaseService.addDocument(
        FirebasePaths.providers, data.toMap());

    return;
  }
}
