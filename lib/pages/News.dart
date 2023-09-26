// ignore_for_file: file_names

import 'package:alsagr_app/HomePages/mangar.dart';
import 'package:alsagr_app/News/football.dart';
import 'package:alsagr_app/News/hotel.dart';
import 'package:alsagr_app/components/drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../HomePages/swimming.dart';

class NewsPage extends StatefulWidget {
  // دايما ودايماا استخدمي ستيت فل
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  Map<String, dynamic> contents = {
    "فرص الاستثمار": const Football(), // كرة قدم
    " جديد نادي الصقر": const mangarmm(), // كرة طائرة
    "إتفاقية نادي الصقر ": const hotel(), // كرة سلة
    "العلاج الطبيعي": const swimming(), // السباحة
  };
  Widget currentValue = const Football(); // حتى هذا ما اغيره
  List posts = [];
  getData() {
    FirebaseFirestore.instance
        .collection('news')
        .get()
        .then((value) => {posts.add(value.docs), print(posts.length)});
  }

  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text('الاخبار'),
        backgroundColor: const Color.fromARGB(255, 86, 45, 93),
        centerTitle: true,
        toolbarHeight: 60,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 242, 244, 246),
      body: FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance.collection("news").get(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, i) {
                  return Center(
                      child: Column(children: [
                    Text(
                      snapshot.data!.docs[i]['title'].toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Image.network(
                      snapshot.data!.docs[i]['imageUrl'].toString(),
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: contents.length,
                        itemBuilder: (context, index) {
                          final keys = contents.keys.toList();
                          final currentKey = keys[index];
                          // currentValue = contents[currentKey];
                          return Center(
                            child: GestureDetector(
                              onTap: () {
                                print(currentKey);
                                print(contents[currentKey]);
                                setState(() {
                                  currentValue = contents[currentKey];
                                });
                              },
                              child: Center(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: Text(currentKey),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        return currentValue;
                      },
                    )
                  ]));
                });
          }
          if (snapshot.hasError) {
            return const Text('error');
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
