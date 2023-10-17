import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
Future<List<DocumentSnapshot>> getData(String collectionName) async {
  try {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection(collectionName).get();
    List<DocumentSnapshot> documents = querySnapshot.docs;
    return documents;
  } catch (e) {
    log('Error reading documents: $e');
    return [];
  }
}
