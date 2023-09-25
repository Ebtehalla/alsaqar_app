import 'dart:developer';

import 'package:alsagr_app/models/next_match_model.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NextMatchDataSources {
  static const String nextMatchCollection = "NextMatch";

  Future<NextMatchModel?> getNextMatch() async {
    NextMatchModel? nextMatchModel;
    try {
      CollectionReference collection =
          FirebaseFirestore.instance.collection('NextMatch');
      QuerySnapshot querySnapshot = await collection.get();
      // Loop through the documents and access the data
      for (QueryDocumentSnapshot document in querySnapshot.docs) {
        Map<String, dynamic> data = document.data() as Map<String, dynamic>;
        nextMatchModel = NextMatchModel.fromMap(data);
        return nextMatchModel;
      }
    } catch (e) {
      log('Error getting data: $e');
      return null;
    }
    return nextMatchModel;
  }

  static Future<void> addNextMatchToFirestore(NextMatchModel course) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference services = firestore.collection('NextMatch');
      await firestore.runTransaction((transaction) async {
        transaction.set(services.doc(), course.toMap());
      });
      BotToast.showText(text: 'Next Match added to Firestore successfully!');
    } catch (e) {
      log('Error adding Next Match to Firestore: $e');
    }
  }
}
