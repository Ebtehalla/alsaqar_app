import 'package:flutter/material.dart';
import 'package:alsagr_app/components/drawer.dart';

class ClubVision extends StatefulWidget {
  const ClubVision({super.key});

  @override
  _ClubVisionState createState() => _ClubVisionState();
}

class _ClubVisionState extends State<ClubVision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text('رؤية نادي الصقر'),
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
      backgroundColor: const Color.fromARGB(255, 247, 249, 247),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        children: const [
          Center(
            child: Column(
              children: [
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    ' رؤية نادي الصقر السعودي',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 61, 122, 63),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0),

          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              'ان نكون ضمن الخمس اندية الرياضية المتميزة في الدوري منافسين في الالعاب المختلفة , مساهمين في خدمة مجتمعنا , خلال الخمس سنوات.',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(height: 20.0),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              'ضمن الخمس أندية مميزة : في المراتب المتقدم في منافسة كرة القدم ومستقر فنيا وإداريا وماليا',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(height: 40.0),
          SizedBox(height: 5.0), // Add spacing between the text and the line
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 146, 146, 146),
                  width: 1.0,
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              'رسالة النادي',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 61, 122, 63),
              ),
            ),
          ),

          SizedBox(height: 10.0),

          Text(
            'أن نكون نموذجا متميزا للرياضة السعودية من خلال التطوير المؤسسي , وتطوير المنشآت والمرافق , وضمان الاستدامة المالية وتعزيز دور النادي المجتمعي , لتحقيق طموحات الشركاء.',
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 16.0),
          ),

          SizedBox(
            height: 40.0,
            width: 20.0,
          ),
          SizedBox(height: 5.0), // Add spacing between the text and the line
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 146, 146, 146),
                  width: 1.0,
                ),
              ),
            ),
          ),
          Center(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                'القيم',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 61, 122, 63),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              'في سعي النادي في أن يكون متميزاً , فإنه يعمل على غرس القيم والمبادئ الإسلامية والإنسانية في نفوس منسوبيه وشركائه , بما يخلق بيئة تنافسية جاذبة.',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(
              height:
                  20.0), // إضافة فراغ إضافي في الأسفل لتجنب عدم ظهور آخر النصوص عند التمرير
        ],
      ),
    );
  }
}
