import 'package:alsagr_app/pages/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: const FirebaseOptions(
  //     apiKey: "YOUR_API_KEY",
  //     appId: "YOUR_APP_ID",
  //     messagingSenderId: "YOUR_SENDER_ID",
  //     projectId: "YOUR_PROJECT_ID",
  //   ),
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        title: 'نادي الصقر',
        imagePath: '',
      ),
    );
  }
}
