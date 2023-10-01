import 'package:alsagr_app/data_sources/news_api.dart';
import 'package:alsagr_app/models/playerModel.dart';
import 'package:alsagr_app/services/firebaseApi.dart';
import 'package:flutter/material.dart';

class PlayersCard extends StatefulWidget {
  const PlayersCard({super.key});

  @override
  State<PlayersCard> createState() => _PlayersCardState();
}

class _PlayersCardState extends State<PlayersCard> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PlayerModel>>(
      future: FirebaseApiService().getAllPlayers(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PlayerModel>? players = snapshot.data;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: players?.length ?? 0,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () async {
                            await getNews();
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.network(
                                        players?[index].playerImage ?? "",
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                const Icon(Icons.face),
                                        loadingBuilder:
                                            (context, child, loadingProgress) {
                                          return loadingProgress == null
                                              ? child
                                              : CircularProgressIndicator
                                                  .adaptive(
                                                  value: loadingProgress
                                                          .cumulativeBytesLoaded /
                                                      loadingProgress
                                                          .expectedTotalBytes!
                                                          .toInt(),
                                                );
                                        },
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.2,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        fit: BoxFit.contain,
                                      )),
                                  Text(players?[index].playerPosition ?? ""),
                                  Text((players?[index]
                                              .playerNumber
                                              .toString() ??
                                          "")
                                      .replaceAll("null", "")),
                                  Text(players?[index].playerName ?? ""),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     TextButton(
                  //         onPressed: () async {
                  //           // await NextMatchDataSources.addNextMatchToFirestore(
                  //           //     NextMatchModel());
                  //           // تودينه صفحه وتمررين اللسته عشان تعرضين الكل
                  //           //مافهمت كيف
                  //           // يلا نكمل شرح اجل ههههههههههههههههههههه
                  //           // Navigator.of(context).push(
                  //           //   MaterialPageRoute(
                  //           //     builder: (context) =>
                  //           //         AllPlayers(playersList: playersList),
                  //           //   ),
                  //           // );
                  //         },
                  //         child: const Text('عرض المزيد')),
                  //   ],
                  // ),
                ],
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
      },
    );
  }
}
