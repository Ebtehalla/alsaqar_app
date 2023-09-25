import 'package:alsagr_app/HomePages/imageheadr.dart';
import 'package:alsagr_app/HomePages/math.dart';
import 'package:alsagr_app/HomePages/players_card.dart';
import 'package:alsagr_app/components/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title, required String imagePath});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController = ScrollController();
  GlobalKey playersKey = GlobalKey();
  GlobalKey orgStructKey = GlobalKey();
  GlobalKey mathKey = GlobalKey();
  GlobalKey imageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    List<GlobalKey> keys = [
      playersKey, //0
      orgStructKey, // 1
      mathKey, //2
      imageKey, //3
    ];
    return Scaffold(
      drawer: MyDrawer(keys: keys),
      appBar: AppBar(
        title: const Text("نادي الصقر"),
        backgroundColor: const Color.fromARGB(255, 86, 45, 93),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    '',
                    key: imageKey,
                  ),
                  const ImageHeadr(),
                  Text(
                    '',
                    key: mathKey,
                  ),
                  const Mathsport(),
                  Text(
                    'قائمة اللاعبين',
                    key: playersKey,
                  ),
                  const PlayersCard(),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom:
                            5.0), // Change the value to adjust the padding size
                    child: Center(
                      child: Container(
                        alignment: Alignment.centerRight,
                        color: const Color.fromARGB(255, 107, 67, 114),
                        child: const Text(
                          'نادي الصقر السعودي @2023',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
