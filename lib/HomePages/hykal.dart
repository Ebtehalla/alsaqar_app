import 'package:alsagr_app/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class hakll extends StatefulWidget {
  @override
  _hakllState createState() => _hakllState();
}

class _hakllState extends State<hakll> {
  late Future<Widget> imageFromFirestore;

  @override
  void initState() {
    super.initState();
    imageFromFirestore = getImageFromFirestore();
  }

  Future<Widget> getImageFromFirestore() async {
    final DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('structer')
        .doc('newStructer')
        .get();

    final String imageURL = snapshot.get('image');
    return Image.network(imageURL);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text('الهيكل التنظيمي'),
        actions: [
          ClipOval(
            child: Image.asset('assets/Alsaaqerclub.jpg'),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 86, 45, 93),
        centerTitle: true,
        toolbarHeight: 60,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Color.fromARGB(255, 255, 255, 255),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FutureBuilder<Widget>(
                      future: imageFromFirestore,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        }
                        if (snapshot.hasError) {
                          return const Icon(Icons.error);
                        }
                        return snapshot.data ?? Container();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}