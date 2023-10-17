// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:alsagr_app/components/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class store extends StatefulWidget {
  const store({Key? key}) : super(key: key);

  @override
  State<store> createState() => _storeState();
}

class _storeState extends State<store> {
  void _openStore() async {
    const url = 'https://store.alsaqerfc.sa/';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('متجر نادي الصقر'),
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
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Container(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const SizedBox(height: 160),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: _openStore,
                      child: Container(
                        width: 150,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 90, 42, 79),
                              Color.fromARGB(255, 107, 67, 114),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'متجر نادي الصقر',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 700),
                  Center(
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
