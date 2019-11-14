import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

abstract class FirebaseService {
  Future<List<dynamic>> getDataCollection(String path);
  Stream<QuerySnapshot> streamDataCollection(String path);
  Future<DocumentSnapshot> getDocumentById(String path, String id);
  Future<void> removeDocument(String path, String id);
  Future<DocumentReference> addDocument(String path, Map data);
  Future<void> updateDocument(String path, Map data, String id);
}
