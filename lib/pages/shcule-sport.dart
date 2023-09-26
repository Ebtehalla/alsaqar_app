import 'package:alsagr_app/components/drawer.dart';
import 'package:flutter/material.dart';

class sportclander extends StatefulWidget {
  const sportclander({super.key});

  @override
  State<sportclander> createState() => _sportclanderState();
}

class _sportclanderState extends State<sportclander> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text(' جدول المباريات'),
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
          child: Column(
            children: [
              Container(
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Center(
                  child: Column(
                    children: [
                      // Header 'Title & Image'
                      const Text(
                        'جدول مباريات الفريق الأول لكرة القدم في #دوري_الدرجة_الثانية للموسم الرياضي 2022-2023م "الدور الثاني".',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset('assets/clander.jpeg'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
