import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseApi {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createNews(String title, String imageUrl) async {
    final CollectionReference newsCollection = _firestore.collection('news');
    await newsCollection.add({
      'title': title,
      'imageUrl': imageUrl,
    });
  }

  readFromFirestore(String s) {}
}
