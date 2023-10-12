import 'package:flutter/material.dart';
import 'package:alsagr_app/components/drawer.dart';

// ignore: camel_case_types
class Goalsclub extends StatefulWidget {
  const Goalsclub({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GoalsclubState createState() => _GoalsclubState();
}

class _GoalsclubState extends State<Goalsclub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text(':الاستراتيجية وأهدافها ومبادراتها'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.asset('assets/Alsaaqerclub.jpg'),
            ),
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "استنادًا إلى معايير الحوكمة المعتمدة من وزارة الرياضة للموسم الرياضي 2022-2023 للأندية الرياضية بالمملكة، فقد تم تقسيم الأهداف الرئيسية للنادي إلى أربعة أهداف كما يلي:-",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "المحور الأول: تطوير البناء المؤسسي",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "المحور الثاني: تعزيز الاستدامة المالية",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "المحور الثالث: تجويد العلاقة مع أصحاب المصلحة",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "المحور الرابع: تحسين التنافسية الرياضية",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
