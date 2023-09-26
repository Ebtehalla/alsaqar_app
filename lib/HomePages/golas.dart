import 'package:flutter/material.dart';
import 'package:alsagr_app/components/drawer.dart';

// ignore: camel_case_types
class goalsclub extends StatefulWidget {
  const goalsclub({super.key});

  @override
  _goalsclubState createState() => _goalsclubState();
}

class _goalsclubState extends State<goalsclub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text(':الاستراتيجية وأهدافها ومبادراتها'),
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
      body: Container(
        padding: const EdgeInsets.all(20.0), // تعديل الحشو داخل البوكس
        margin: const EdgeInsets.all(20.0), // تعديل الهامش الخارجي للبوكس
        decoration: BoxDecoration(
          color: Colors.white, // تعديل لون البوكس
          borderRadius: BorderRadius.circular(10.0), // تعديل شكل حواف البوكس
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 119, 67, 98)
                  .withOpacity(0.5), // تعديل لون الظل
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // تعديل اتجاه الظل
            ),
          ],
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          children: const [
            Center(
              child: Column(
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      'تطوير البناء المؤسسي :',
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
                'يسعى النادي إلى حوكمة كافة الأعمال الإدارية بما يتماشى مع اللوائح والأنظمة والاجراءات المعتمدة من وزارة الرياضة,وتحويل المعاملات الورقية الى معاملات إلكترونية من خلال الحوكمة الرقمية وتوفير بنية تحتية ومرافق متكاملة لكافة اصحاب المصلحة الداخلية والخارجية .',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '  -مبادرات النادي لتحقيق الأهداف  : ',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 61, 122, 63),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 146, 146, 146),
                    width: 0.6,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
              width: 0.3,
            ), // Add spacing between the additional text and the new text
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '1- الحوكمة الإدارية الفعالة',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '2- التحول الرقمي للنادي',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '3- تجهيز مرافق النادي ورفع الكفاءة التشغيلية',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(height: 40.0),
            SizedBox(height: 5.0), // Add spacing between the text and the line
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 34, 33, 33),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Center(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  'تعزيز الاستدامة المالية : ',
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
                ' يسعى النادي لتنمية موارده المالية لتحقيق تطلعاته في المجالين الرياضي وغير الرياضي من خلال رفع استثماراته الذاتية وزيادة عدد الرعاة والمعلنين ,والإدارة الفاعلة لهذة الموارد المالية وتخصيصها وفقا لأولويات لتحقيق كفاءة الإنفاق.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '  -مبادرات النادي لتحقيق الأهداف  : ',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 61, 122, 63),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 146, 146, 146),
                    width: 0.6,
                  ),
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '1- تعزيز قيمة العلامة التجارية للنادي',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '2- استثمار ممتلكات النادي وأصوله',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '3- استقطاب الرعاة والمعلنين والداعمين',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '4- استقطاب الرعاة والمعلنين والداعمين',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '5-تحسين كفاءة الإنفاق ',
                style: TextStyle(fontSize: 16.0),
              ),
            ),

            SizedBox(height: 40.0, width: 20.0),
            SizedBox(height: 5.0), // Add spacing between the text and the line
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 34, 33, 33),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Center(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  'تجويد العلاقة مع أصحاب المصلحة :',
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
                'يسعى النادي لبناء علاقات مميزة مع الأطراف ذوي العلاقة بأنشطة النادي الرياضية وغير الرياضية وعلى رأسهم وزارة الرياضية والاتحادات ,وشركات الرعاية والإعلان , ومنسوبو النادي من إلاداريين واللاعبين زالمدربين , وجماهير النادي, وكافة النادي , وكافة المصلحة الأخرون.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '  -مبادرات النادي لتحقيق الأهداف  : ',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 61, 122, 63),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 146, 146, 146),
                    width: 0.6,
                  ),
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '1- المشاركة الفعالة في مبادرات الوزارة والاتحادات الرياضية',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '2- تنفيذ برامج مشتركة مع الرعاة والمعلنين والداعمين ',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '3- التواصل الفعال مع منسوبي النادي',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '4-  تنويع الفعاليات الترفيهية للجماهير',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '5-تعزيز الأتصال والحضور الإعلامي ',
                style: TextStyle(fontSize: 16.0),
              ),
            ),

            SizedBox(height: 40.0, width: 20.0),
            SizedBox(height: 5.0), // Add spacing between the text and the line
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 34, 33, 33),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Center(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: SizedBox(
                  child: Text(
                    ' تحسين التنافسية الرياضية :',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 61, 122, 63),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                ' يسعى النادي لتعزيز تنافسية في لعبة كرة القدم والصعود بالفريق الأول إلى دوري الدرجة الأولى ,وتفعيل عدد من الألغاب المختلفة بما يتماشى من توجهات وزارة الرياضة ويسهم في تحقيق تطلعات المنطقة.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '  -مبادرات النادي لتحقيق الأهداف  : ',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 61, 122, 63),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 146, 146, 146),
                    width: 0.6,
                  ),
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '1-استقطاب اللاعبين المميزين',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '2-استقطاب المواهب السنية',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '3-استقطاب المدربين المميزين  ',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '4-تفعيل أكاديمية النادي ',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '5-توفير الرعاية الصحية للاعبين ',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                '6-إقامة المعسكرات التحضيرية ',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(
                height:
                    28.0), // إضافة فراغ إضافي في الأسفل لتجنب عدم ظهور آخر النصوص عند التمرير
          ],
        ),
      ),
    );
  }
}
