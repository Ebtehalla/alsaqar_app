import 'package:alsagr_app/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class pageemplo extends StatelessWidget {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  pageemplo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أستطلاع الموظفين'),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: FormBuilder(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  '1. الجنس ',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name: '1. الجنس',
                  options: const [
                    FormBuilderFieldOption(value: 'ذكر '),
                    FormBuilderFieldOption(value: ' انثى'),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '2. الوصف الوظيفي للإدارات بالهيكل التنظيمي سهل وواضح',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name: '2. العمر',
                  options: const [
                    FormBuilderFieldOption(value: 'غير موافق بشدة'),
                    FormBuilderFieldOption(value: 'غير موافق'),
                    FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                    FormBuilderFieldOption(value: 'موافق'),
                    FormBuilderFieldOption(value: 'موافق بشدة')
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '3.يقوم النادي بتقدير الموظفين المميزين والمبدعين على كافة المستويات وفقاً لنظام مكافآت عادل ومعلن',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name: '3. مكان الإقامة الحالي',
                  options: const [
                    FormBuilderFieldOption(value: 'غير موافق بشدة'),
                    FormBuilderFieldOption(value: 'غير موافق'),
                    FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                    FormBuilderFieldOption(value: 'موافق'),
                    FormBuilderFieldOption(value: 'موافق بشدة')
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '4. يُطبق النادي نظام تقييم أداء عادل ويُقدم التغذية الراجعة للموظفين ',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name:
                      '4. يقوم النادي بتسويق المباريات عبر وسائل التواصل الاجتماعي والأماكن العامة',
                  options: const [
                    FormBuilderFieldOption(value: 'غير موافق بشدة'),
                    FormBuilderFieldOption(value: 'غير موافق'),
                    FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                    FormBuilderFieldOption(value: 'موافق'),
                    FormBuilderFieldOption(value: 'موافق بشدة')
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '5.ينظم النادي فعاليات اجتماعية للموظفين  لتعزيز الترابط بينهم',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name:
                      '5. الأنشطة التسويقية التي يقوم بها النادي لجذب الجماهير لحضور المباريات كافية',
                  options: const [
                    FormBuilderFieldOption(value: 'غير موافق بشدة'),
                    FormBuilderFieldOption(value: 'غير موافق'),
                    FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                    FormBuilderFieldOption(value: 'موافق'),
                    FormBuilderFieldOption(value: 'موافق بشدة')
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '6.  يعمل النادي على إقامة برنامج للتعريف بأنظمة ولوائح النادي والوزارة للموظفين الجدد بصفة دورية',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name:
                      '6. ما مدى رضاك عن تنظيم المباراة من حيث (تنظيم دخول وخروج الجماهير - توزيع المنظمين داخل المدرجات - توفر اللوحات الارشادية)',
                  options: const [
                    FormBuilderFieldOption(value: 'راضي جداً'),
                    FormBuilderFieldOption(value: 'راضي'),
                    FormBuilderFieldOption(value: 'غير راضي'),
                    FormBuilderFieldOption(value: 'غير راضي جداً'),
                    FormBuilderFieldOption(value: 'محايد')
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '7.يتمتع النادي بوجود بيئة صحية جاذبة',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name: '7.يلتزم النادي بمعايير الأمان .',
                  options: const [
                    FormBuilderFieldOption(value: 'راضي جداً'),
                    FormBuilderFieldOption(value: 'راضي'),
                    FormBuilderFieldOption(value: 'غير راضي'),
                    FormBuilderFieldOption(value: 'غير راضي جداً'),
                    FormBuilderFieldOption(value: 'محايد')
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '. منصبك الإداري؟',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  '. ماهي مقترحاتك لتطوير أداء النادي؟',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 55, 122, 58), // Set the desired color here
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 20), // Adjust the padding here
                    textStyle: const TextStyle(
                        fontSize: 18), // Adjust the font size here
                  ),
                  child: const Text('إرسال'),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
