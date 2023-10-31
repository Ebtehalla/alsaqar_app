import 'package:alsagr_app/components/drawer.dart';
import 'package:flutter/material.dart';

class problem extends StatefulWidget {
  const problem({super.key});

  @override
  State<problem> createState() => _problemState();
}

class _problemState extends State<problem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('التواصل'),
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
          child: Column(
            children: [
              const Text(
                'الشكاوي والأقتراحات',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: 'أدخل اسمك',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Set the desired border radius here
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: 'الموضوع',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Set the desired border radius here
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: ' نوع الطلب ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Set the desired border radius here
                  ),
                ),
              ),
              const SizedBox(height: 26),
              TextField(
                decoration: InputDecoration(
                  hintText: 'رسالتك',
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 20), // ضبط الحاشية الداخلية هنا
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 55, 122, 58), // Set the desired color here
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 20), // Adjust the padding here
                  textStyle: const TextStyle(
                      fontSize: 18), // Adjust the font size here
                ),
                child: const Text('إرسال'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
