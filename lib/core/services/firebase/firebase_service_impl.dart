import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

/// Helper service that abstracts away common Firebase Requests
class FirebaseServiceImpl implements FirebaseService {
  final Firestore _db = Firestore.instance;

  Future<List<dynamic>> getDataCollection(String path) async {
    QuerySnapshot snapshot = await _db.collection(path).getDocuments();
    return snapshot.documents;
  }

  Stream<QuerySnapshot> streamDataCollection(String path) {
    return _db.collection(path).snapshots();
  }

  Future<DocumentSnapshot> getDocumentById(String path, String id) {
    return _db.collection(path).document(id).get();
  }

  Future<void> removeDocument(String path, String id) {
    return _db.collection(path).document(id).delete();
  }

  Future<DocumentReference> addDocument(String path, Map data) {
    return _db.collection(path).add(data);
  }

  Future<void> updateDocument(String path, Map data, String id) {
    return _db.collection(path).document(id).updateData(data);
  }
}
