import 'package:alsagr_app/News/hotel.dart';
import 'package:alsagr_app/components/drawer.dart';
import 'package:alsagr_app/components/news_card.dart';
import 'package:alsagr_app/services/firebaseApi.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  var temp;
  String loaded = '0';

  Future getdata() {
    print('loaded');
    temp += temp;
    return (temp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text("الاخبار"),
        backgroundColor: const Color.fromARGB(255, 86, 45, 93),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: temp is List<DocumentSnapshot>
                ? getdata()
                : FirebaseApi().readFromFirestore('news'),
            builder: (context, snapshot) {
              if (snapshot.hasData == false) {
                return const Center(
                  child: RefreshProgressIndicator(),
                );
              }

              var news = snapshot.data as List<DocumentSnapshot>;
              temp = news;
              print(temp is List<DocumentSnapshot>);
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: news.length,
                      itemBuilder: (context, index) {
                        print('=======================');
                        print('=======================');
                        print('=======================');
                        print('======hello=========');
                        print('=======================');
                        print('=======================');
                        print('=======================');
                        print('=======================');
                        var item = news[index].data() as Map<dynamic, dynamic>;
                        Map<String, dynamic> map = Map.from(item);
                        DateTime dateTime = map['time'].toDate();
                        String year = dateTime.year.toString();
                        String month = dateTime.month.toString();
                        String day = dateTime.day.toString();
                        String _dateTime = '$year-$month-$day';
                        print("=========================");
                        print(map);
                        print("=========================");
                        return MyNewsCard(
                          title: map['title'],
                          category: map['category'],
                          img: map['img'],
                          content: map['content'],
                          time: _dateTime,
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
