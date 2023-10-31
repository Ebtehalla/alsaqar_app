import 'package:alsagr_app/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class emploeeykey extends StatefulWidget {
  const emploeeykey({super.key});

  @override
  State<emploeeykey> createState() => _emploeeykeyState();
}

class _emploeeykeyState extends State<emploeeykey> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مثال حقل النص',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/emploe.jpg', // Replace with the path to your image
                    width: 500,
                    height: 400,
                  ),
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
                        print('Selected resume file: $filePath');
                      } else {
                        // User canceled the file picking
                        print('File picking canceled.');
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
      ),
    );
  }
}
