import 'package:alsagr_app/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SurveyScreen extends StatelessWidget {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  SurveyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أستطلاع الجمهور'),
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
                const Text(
                  'نأمل منكم الإجابة على الأسئلة لمعرفة انطباعكم عن أداء النادي',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  '1. الجنس',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name: '1. الجنس',
                  options: const [
                    FormBuilderFieldOption(value: 'ذكر'),
                    FormBuilderFieldOption(value: 'أنثى')
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '2. العمر',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name: '2. العمر',
                  options: const [
                    FormBuilderFieldOption(value: 'أقل من 20 سنة'),
                    FormBuilderFieldOption(value: 'من 20 إلى أقل من 30 سنة'),
                    FormBuilderFieldOption(value: 'من 30 إلى أقل من 50 سنة'),
                    FormBuilderFieldOption(value: 'من 50 سنة فأعلى')
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '3. مكان الإقامة الحالي',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name: '3. مكان الإقامة الحالي',
                  options: const [
                    FormBuilderFieldOption(value: 'منطقة القصيم'),
                    FormBuilderFieldOption(value: 'خارج منطقة القصيم'),
                    FormBuilderFieldOption(value: 'خارج المملكة')
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '4. يقوم النادي بتسويق المباريات عبر وسائل التواصل الاجتماعي والأماكن العامة',
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
                  '5. الأنشطة التسويقية التي يقوم بها النادي لجذب الجماهير لحضور المباريات كافية',
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
                  '6. ما مدى رضاك عن تنظيم المباراة من حيث (تنظيم دخول وخروج الجماهير - توزيع المنظمين داخل المدرجات - توفر اللوحات الارشادية)',
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
                  '7.يلتزم النادي بمعايير الأمان .',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name:
                      '7. يلتزم النادي بمعايير الأمانا آسف و لكن ليس لدي توجه نحو لغة معينة. إذا كنت تحتاج إلى مساعدة بخصوص شيء معين، يسعدني أن أساعدك.',
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
                  '8. يستهدف النادي فئات مختلفة من المجتمع عند إقامة الأنشطة الترفيهية والفعاليات',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name:
                      '8. يستهدف النادي فئات مختلفة من المجتمع عند إقامة الأنشطة الترفيهية والفعاليات',
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
                  '9. تنوع الأطعمة والمشروبات المقدمة من النادي خلال الأنشطة والفعاليات',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name:
                      '9. تنوع الأطعمة والمشروبات المقدمة من النادي خلال الأنشطة والفعاليات',
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
                  '10. وسائل التواصل الاجتماعي تغطي أحداث مباريات النادي',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name: '10. وسائل التواصل الاجتماعي تغطي أحداث مباريات النادي',
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
                  '11. يستخدم النادي الموقع الإلكتروني الرسمي في الإعلان عن المباريات القادمة',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name:
                      '11. يستخدم النادي الموقع الإلكتروني الرسمي في الإعلان عن المباريات القادمة',
                  options: const [
                    FormBuilderFieldOption(value: 'نعم'),
                    FormBuilderFieldOption(value: 'لا'),
                    FormBuilderFieldOption(value: 'لا أعلم')
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '12. ما مدى رضاك عن مستوى أداء اللاعبين المحليين في المباراتين السابقتين',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name:
                      '12. ما مدى رضاك عن مستوى أداء اللاعبين المحليين في المباراتين السابقتين',
                  options: const [
                    FormBuilderFieldOption(value: 'ممتاز'),
                    FormBuilderFieldOption(value: 'جيد جداً'),
                    FormBuilderFieldOption(value: 'مقبول'),
                    FormBuilderFieldOption(value: 'ضعيف')
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '13. ما مدى رضاك عن مستوى أداء الجهاز الفني والإداري للفريق الأول في المباراتين السابقتين',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderRadioGroup(
                  name:
                      '13. ما مدى رضاك عن مستوى أداء الجهاز الفني والإداري للفريق الأول في المباراتين السابقتين',
                  options: const [
                    FormBuilderFieldOption(value: 'ممتاز'),
                    FormBuilderFieldOption(value: 'جيد جداً'),
                    FormBuilderFieldOption(value: 'مقبول'),
                    FormBuilderFieldOption(value: 'ضعيف')
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  '14. ماهي مقترحاتك لتطوير أداء النادي؟',
                  style: TextStyle(
                    fontSize: 17, // تحديد حجم النص هنا
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 94, 32), // تحديد لون النص ه
                  ),
                ),
                FormBuilderTextField(
                  name: '14. ماهي مقترحاتك لتطوير أداء النادي؟',
                  maxLines: 3,
                  decoration: const InputDecoration(
                    labelText: 'مقترحات',
                    border: OutlineInputBorder(),
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
