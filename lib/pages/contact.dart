import 'package:alsagr_app/pages/homepage.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:alsagr_app/components/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/extensions/validator.dart';
import '../data_sources/contact_us_apis.dart';
import '../models/contact_us_model.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});
  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  var fullNameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var emailController = TextEditingController();
  var subjectController = TextEditingController();
  GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();
  void _openSocialMedia(String url) async {
    if (await canLaunchUrl(
      Uri.parse(url),
    )) {
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future contactUs({
    required String name,
    required String email,
    required String phone,
    required String message,
  }) async {
    bool? res = await ContactUsAPIS.addMessageToFirestore(
      ContactUsModel(
        email: email,
        message: message,
        name: name,
        phone: phone,
      ),
    );
    if (res) {
      BotToast.closeAllLoading();
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(
              title: 'نادي الصقر',
              imagePath: '',
            ),
          ));
      BotToast.showText(
        text: "تم إرسال رسالتك بنجاح سيتم التواصل معك قريبا",
      );
    } else {
      BotToast.closeAllLoading();

      BotToast.showText(
        text: "حدث خطأ اثناء إرسال رسالتك حاول مرة اخري",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التواصل'),
        actions: [
          ClipOval(
            child: Image.asset('assets/1703776859895.png'),
          )
        ],
        backgroundColor: const Color.fromRGBO(131, 40, 117, 1.000),
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
        child: Form(
          key: contactFormKey,
          child: Column(
            children: [
              const Text(
                'تواصل معنا',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: fullNameController,
                validator: Validator.validateName,
                decoration: InputDecoration(
                  hintText: 'أدخل  الأسم',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Set the desired border radius here
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                validator: Validator.validateMobile,
                decoration: InputDecoration(
                  hintText: ' أدخل رقم جوالك ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Set the desired border radius here
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: emailController,
                validator: Validator.validateEmail,
                decoration: InputDecoration(
                  hintText: '  أدخل بريدك الألكتروني ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Set the desired border radius here
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: subjectController,
                validator: Validator.validateEmpty,
                decoration: InputDecoration(
                  hintText: ' الموضوع ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Set the desired border radius here
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  if (contactFormKey.currentState!.validate()) {
                    contactUs(
                      name: fullNameController.text,
                      email: phoneNumberController.text,
                      phone: emailController.text,
                      message: subjectController.text,
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(
                      215, 172, 78, 1.000), // Set the desired color here
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 20), // Adjust the padding here
                  textStyle: const TextStyle(
                      fontSize: 18), // Adjust the font size here
                ),
                child: const Text('إرسال'),
              ),
              const SizedBox(height: 16),
              const Text(
                ' : تواصل معنا عبر ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/new_twitter.png'),
                    onPressed: () => _openSocialMedia(
                        'https://twitter.com/ALSAQERFC?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor'),
                  ),
                  IconButton(
                    icon: Image.asset(
                        'assets/new-tiktok.png'), // استبدل بأيقونة سناب شات الخاصة بك
                    onPressed: () =>
                        _openSocialMedia('https://www.tiktok.com/@alsaqerfc'),
                  ),
                  IconButton(
                    icon: Image.asset(
                        'assets/whatsapp-icon.png'), // استبدل بأيقونة واتساب الخاصة بك
                    onPressed: () => _openSocialMedia(
                        'https://api.whatsapp.com/send?phone=966534141130'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 5.0), // Change the value to adjust the padding size
                child: Center(
                  child: Container(
                    alignment: Alignment.centerRight,
                    color: const Color.fromRGBO(131, 40, 117, 1.000),
                    child: const Text(
                      'نادي الصقر السعودي @2023',
                      style: TextStyle(
                        color: Color.fromRGBO(215, 172, 78, 1.000),
                        fontSize: 18.0,
                      ),
                    ),
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
