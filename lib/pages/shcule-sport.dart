import 'package:alsagr_app/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Match {
  final String team1;
  final String team2;
  final String team1Image;
  final String team2Image;
  final String stadium;
  final String matchDate;
  final String matchTime;
  final String matchDay;

  Match({
    required this.team1,
    required this.team2,
    required this.team1Image,
    required this.team2Image,
    required this.stadium,
    required this.matchDate,
    required this.matchTime,
    required this.matchDay,
  });
}

class sportclander extends StatefulWidget {
  @override
  State<sportclander> createState() => _sportclanderState();
}

class _sportclanderState extends State<sportclander> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text('جدول المباريات'),
        actions: [
          ClipOval(
            child: Image.asset('assets/Alsaaqerclub.jpg'),
          ),
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
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('matches')
            .snapshots(), // استبدل 'matches' بالاسم الفعلي لمجموعتك
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          List<Match> matches = [];
          for (var document in snapshot.data!.docs) {
            matches.add(
              Match(
                team1: document['team1'],
                team2: document['team2'],
                team1Image: document['team1Image'],
                team2Image: document['team2Image'],
                stadium: document['stadium'],
                matchDate: document['matchDate'],
                matchTime: document['matchTime'],
                matchDay: document['matchDay'],
              ),
            );
          }

          return ListView.builder(
            itemCount: matches.length,
            itemBuilder: (context, index) {
              Match match = matches[index];
              bool isFirstRow =
                  index == 0; // تحديد ما إذا كان الصف الحالي هو الصف الأول

              return Column(
                children: [
                  if (isFirstRow) // عرض الصورة والعنوان فقط في الصف الأول
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Alsaaqerclub.jpg',
                            width: 150,
                            height: 150,
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'الصقر',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color.fromARGB(255, 34, 33, 33),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.topRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.calendar_today,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                match.matchDate,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 24, 90, 57),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 5,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'دوري الدرجة الثانية',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 5,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage:
                                              Image.network(match.team1Image)
                                                  .image,
                                        ),
                                        const SizedBox(height: 8),
                                        Text(match.team1),
                                      ],
                                    ),
                                  ),
                                ),
                                const Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage:
                                              Image.network(match.team2Image)
                                                  .image,
                                        ),
                                        const SizedBox(height: 8),
                                        Text(match.team2),
                                      ],
                                    ),
                                  ),
                                ),
                                const Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      alignment: Alignment.topRight,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          const Icon(
                                            Icons.schedule,
                                            size: 16,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            match.matchTime,
                                            textAlign: TextAlign.right,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        match.matchDay, // Display the day field
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    // باقي الأكواد...
                                  ],
                                ),
                                const Divider(
                                  color: Colors.black,
                                  thickness: 2.0,
                                ),
                                const Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    child: Center(
                                      child: Text(
                                        match.stadium,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
