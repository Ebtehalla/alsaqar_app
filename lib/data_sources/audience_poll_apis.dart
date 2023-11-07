import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/Audience_poll_model.dart';


class AudiencePollApis {
  static Future<bool> addMessageToFirestore(
    OpinionPoll opinionPoll,
  ) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference technicalSupport =
          firestore.collection('OpinionPoll');
      // Add the course data to Firestore
      await firestore.runTransaction((transaction) async {
        transaction.set(
          technicalSupport.doc(),
          opinionPoll.toMap(),
        );
      });
      log('Technical Support added to Firestore successfully!');
      return true;
    } catch (e) {
      log('Error adding Technical Support to Firestore: $e');
      return false;
    }
  }
}
