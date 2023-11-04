import 'dart:developer';

import 'package:alsagr_app/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Emploeeykey extends StatefulWidget {
  const Emploeeykey({super.key});

  @override
  State<Emploeeykey> createState() => _EmploeeykeyState();
}

class _EmploeeykeyState extends State<Emploeeykey> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: const Text(' الوظائف  '),
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
        body: SingleChildScrollView(
          // Wrap the body content with SingleChildScrollView
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    ' وظائف شاغرة',
                    style: TextStyle(fontSize: 24),
                  ),

                  // Image.asset(
                  //   'assets/emploe.jpg', // Replace with the path to your image
                  //   width: 500,
                  //   height: 400,
                  // ),
                  const SizedBox(height: 40),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'الاسم الثلاثي',
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'رقم الهوية',
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'رقم الجوال',
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'العمر',
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // call api to post information to, if success = clear fields show success msg, false show faild msg & don't clear fields
                      bool sent = true; // نتيجة تسليم الفورم
                      if (sent) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("تم ارسال البيانات بنجاح")));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("تم ارسال البيانات بنجاح")),
                        );
                      }
                    },
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
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () async {
                      FilePickerResult? result =
                          await FilePicker.platform.pickFiles(
                        type: FileType.custom,
                        allowedExtensions: ['pdf', 'doc', 'docx'],
                      );

                      if (result != null) {
                        PlatformFile file = result.files.first;
                        String filePath = file.path!;
                        // Add your custom code here to handle the selected resume file
                        log('Selected resume file: $filePath');
                      } else {
                        // User canceled the file picking
                        log('File picking canceled.');
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(
                          8.0), // Adjust the padding value as needed
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            8.0), // Adjust the border radius as needed
                        child: const Text(
                          'إضافة ملف السيرة الذاتية',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            backgroundColor: Color.fromARGB(255, 24, 90, 57),
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 255, 255, 255),
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
      
    );
  }
}
