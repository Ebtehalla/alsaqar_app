import 'package:alsagr_app/components/drawer.dart';
import 'package:flutter/material.dart';

class planclub extends StatefulWidget {
  const planclub({Key? key}) : super(key: key);

  @override
  State<planclub> createState() => _planclubState();
}

class _planclubState extends State<planclub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text(' هيكل الخطة الاستراتيجية'),
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
              color: Colors.green,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/oyza-gtt.png'),
                    Image.asset('assets/orgyztion-ggf.png'),
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
