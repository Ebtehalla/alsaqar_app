// ignore_for_file: must_be_immutable

import 'package:alsagr_app/HomePages/emploeey.dart';
import 'package:alsagr_app/HomePages/golas.dart';
import 'package:alsagr_app/HomePages/pa1.dart';
import 'package:alsagr_app/HomePages/pa2.dart';
import 'package:alsagr_app/HomePages/pag3.dart';
import 'package:alsagr_app/HomePages/rowaa_club.dart';
import 'package:alsagr_app/HomePages/suggets.dart';
import 'package:alsagr_app/club_vision.dart';
import 'package:alsagr_app/components/pdf_screen.dart';
import 'package:alsagr_app/pages/News.dart';
import 'package:alsagr_app/pages/contact.dart';
import 'package:alsagr_app/pages/homepage.dart';
import 'package:alsagr_app/pages/shcule-sport.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'org_structure_screen.dart';

class MyDrawer extends StatefulWidget {
  List<GlobalKey>? keys;
  MyDrawer({super.key, this.keys});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/Alsaaqerclub.jpg',
                  height: MediaQuery.of(context).size.width * 0.3,
                  fit: BoxFit.contain,
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    myExpandedWidget(
                      context,
                      'الرئيسية',
                      [
                        GestureDetector(
                          onTap: () => navigateToKey(context, widget.keys, 0),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('اللاعبين'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const OrgStrctureScreeen());
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('الهيكل التنظيمي'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        GestureDetector(
                          onTap: () => navigateToKey(context, widget.keys, 2),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('المباراة القادمة'),
                            ],
                          ),
                        ),
                      ],
                      EneftyIcons.home_outline,
                    ),
                    const SizedBox(height: 20),
                    myListTile(
                      context: context,
                      title: ' نبذة التاريخية ',
                      icon: EneftyIcons.information_outline,
                      screenName: const roawaacl(),
                    ),
                    const SizedBox(height: 20),
                    myListTile(
                      context: context,
                      title: 'الاخبار',
                      icon: EneftyIcons.book_2_outline,
                      screenName: const NewsPage(),
                    ),
                    const SizedBox(height: 20),
                    myListTile(
                      context: context,
                      title: 'جدول المباريات',
                      icon: Icons.sports_volleyball_outlined,
                      screenName:
                          const sportclander(), // بدلي الصفحات حقها بعدين
                    ),
                    const SizedBox(height: 20),
                    myExpandedWidget(
                      context,
                      'الإستراتيجية',
                      [
                        myListTile(
                          context: context,
                          title: 'رؤية النادي ورسالته',
                          icon: Icons.message_sharp,
                          screenName:
                              const ClubVision(), // بدلي الصفحات حقها بعدين
                        ),
                        const SizedBox(height: 12),
                        myListTile(
                          context: context,
                          title: 'الاهداف الإستراتيجية',
                          icon: Icons.grading_outlined,
                          screenName:
                              const Goalsclub(), // بدلي الصفحات حقها بعدين
                        ),
                        const SizedBox(height: 12),
                        myListTile(
                          context: context,
                          title: 'وثيقة الخطة الإستراتيجية',
                          icon: Icons.format_list_bulleted,
                          screenName: const PdfScreen(
                            pdf:
                                "https://firebasestorage.googleapis.com/v0/b/alsaqar-566d3.appspot.com/o/__%D8%A7%D8%B3%D8%AA%D8%B1%D8%A7%D8%AA%D9%8A%D8%AC%D9%8A%D8%A9%20%D8%A7%D9%84%D9%86%D8%A7%D8%AF%D9%8A%20%D8%A7%D9%84%D8%B1%D8%B3%D9%85%D9%8A%D8%A9%20(1).pdf?alt=media&token=2eb2af27-f55a-4cc8-a37c-346f9fabc0c9&_gl=1*14x7zam*_ga*MTA5MjI0NDU4LjE2Nzk5MDg4MzY.*_ga_CW55HF8NVT*MTY5NzA5OTc5Ny4xNTcuMS4xNjk3MDk5ODI1LjMyLjAuMA..",
                            title: 'وثيقة الخطة الإستراتيجية',
                          ),
                        ),
                        const SizedBox(height: 12),
                        myListTile(
                          context: context,
                          title: "التقرير السنوي",
                          icon: Icons.format_list_bulleted,
                          screenName: const PdfScreen(
                            pdf: "https://alsaqerfc.sa/site/annulreport.pdf",
                            title: "التقرير السنوي",
                          ),
                        ),
                      ],
                      EneftyIcons.diagram_outline,
                    ),
                    const SizedBox(height: 20),
                    myExpandedWidget(
                      context,
                      'الاستطلاعات',
                      [
                        myListTile(
                          context: context,
                          title: 'استطلاع الجمهور',
                          icon: Icons.poll,
                          screenName: SurveyScreen(), // بدلي الصفحات حقها بعدين
                        ),
                        const SizedBox(height: 12),
                        myListTile(
                          context: context,
                          title: 'استطلاع الموظفين',
                          icon: Icons.group,
                          screenName: pageemplo(), // بدلي الصفحات حقها بعدين
                        ),
                        const SizedBox(height: 12),
                        myListTile(
                          context: context,
                          title: 'استطلاع الزوار',
                          icon: Icons.person_search_sharp,
                          screenName: pagevisit(), // بدلي الصفحات حقها بعدين
                        ),
                      ],
                      EneftyIcons.note_2_outline,
                    ),
                    const SizedBox(height: 20),
                    myExpandedWidget(
                      context,
                      'التواصل',
                      [
                        myListTile(
                          context: context,
                          title: 'تواصل معنا',
                          icon: Icons.contactless_outlined,
                          screenName:
                              const ContactForm(), // بدلي الصفحات حقها بعدين
                        ),
                        const SizedBox(height: 12),
                        myListTile(
                          context: context,
                          title: 'التوظيف',
                          icon: Icons.people_alt,
                          screenName:
                              const emploeeykey(), // بدلي الصفحات حقها بعدين
                        ),
                        const SizedBox(height: 12),
                        myListTile(
                          context: context,
                          title: 'البلاغات والشكاوي',
                          icon: Icons.event_note_outlined,
                          screenName:
                              const problem(), // بدلي الصفحات حقها بعدين
                        ),
                      ],
                      EneftyIcons.message_circle_outline,
                    ),
                    const SizedBox(height: 20),
                    myListTile(
                      context: context,
                      title: 'المتجر',
                      icon: EneftyIcons.shop_outline,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

navigateToKey(BuildContext context, List<GlobalKey>? keys, int index) {
  if (keys == null) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const HomePage(
          title: 'نادي الصقر',
          imagePath: '',
        ),
      ),
      (route) => false,
    );
  } else {
    Navigator.of(context).pop(); // لإغلاق القائمة عند تحديد العنصر
    Scrollable.ensureVisible(
      keys[index].currentContext!,
      alignment: 0.5,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
  }
}

Widget myListTile({
  required BuildContext context,
  required String title,
  required IconData icon,
  Widget? screenName,
}) {
  return GestureDetector(
    onTap: () async {
      String url = "https://store.alsaqerfc.sa";
      screenName != null
          ? Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => screenName,
              ),
              (route) => false,
            )
          : {
              if (await canLaunchUrl(Uri.parse(url)))
                {
                  await launchUrl(Uri.parse(url)),
                }
              else
                {throw 'Could not launch $url'},
            };
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 4),
        Icon(
          icon,
          color: Colors.black54,
          size: 20,
        ),
      ],
    ),
  );
}

Widget myExpandedWidget(
  BuildContext context,
  String title,
  List<Widget> children,
  IconData icon,
) {
  return ExpandablePanel(
    theme: const ExpandableThemeData(
      iconPlacement: ExpandablePanelIconPlacement.right,
    ),
    collapsed: const Row(),
    header: SizedBox(
      height: 40,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              icon,
              color: Colors.black54,
              size: 20,
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    ),
    expanded: Padding(
      padding: const EdgeInsets.only(bottom: 4, left: 8, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    ),
  );
}
