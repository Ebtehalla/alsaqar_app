// ignore_for_file: must_be_immutable

import 'package:alsagr_app/HomePages/emploeey.dart';
import 'package:alsagr_app/HomePages/golas.dart';
import 'package:alsagr_app/HomePages/pa1.dart';
import 'package:alsagr_app/HomePages/pa2.dart';
import 'package:alsagr_app/HomePages/pag3.dart';
import 'package:alsagr_app/HomePages/planclub.dart';
import 'package:alsagr_app/HomePages/rowaa_club.dart';
import 'package:alsagr_app/HomePages/store.dart';
import 'package:alsagr_app/HomePages/suggets.dart';
import 'package:alsagr_app/club_vision.dart';
import 'package:alsagr_app/pages/News.dart';
import 'package:alsagr_app/pages/contact.dart';
import 'package:alsagr_app/pages/homepage.dart';
import 'package:alsagr_app/pages/shcule-sport.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  List<GlobalKey>? keys;
  MyDrawer({super.key, this.keys});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              const SizedBox(height: 12),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.close),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/Alsaaqerclub.jpg',
                      height: MediaQuery.of(context).size.width * 0.3,
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
              // Body
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Divider(),
                  ),
                  myExpandedWidget(
                    context,
                    'الرئيسية',
                    [
                      GestureDetector(
                        onTap: () => navigateToKey(context, widget.keys, 0),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('اللاعبين'),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          navigateToKey(context, widget.keys, 1);
                        },
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('الهيكل التنظيمي'),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => navigateToKey(context, widget.keys, 2),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('المباراة القادمة'),
                            ],
                          ),
                        ),
                      ),
                    ],
                    EneftyIcons.home_outline,
                  ),
                  myListTile(
                    context,
                    ' نبذة التاريخية ',
                    EneftyIcons.information_outline,
                    const roawaacl(),
                  ),
                  myListTile(
                    context,
                    'الاخبار',
                    EneftyIcons.book_2_outline,
                    const NewsPage(),
                  ),
                  myListTile(
                    context,
                    'جدول المباريات',
                    Icons.sports_volleyball_outlined,
                    const sportclander(), // بدلي الصفحات حقها بعدين
                  ),
                  myExpandedWidget(
                    context,
                    'الإستراتيجية',
                    [
                      myListTile(
                        context,
                        'رؤية النادي ورسالته',
                        Icons.message_sharp,
                        const ClubVision(), // بدلي الصفحات حقها بعدين
                      ),
                      myListTile(
                        context,
                        'الاهداف الإستراتيجية',
                        Icons.grading_outlined,
                        const goalsclub(), // بدلي الصفحات حقها بعدين
                      ),
                      myListTile(
                        context,
                        'وثيقة الخطة الإستراتيجية',
                        Icons.format_list_bulleted,
                        const planclub(), // بدلي الصفحات حقها بعدين
                      ),
                    ],
                    EneftyIcons.diagram_outline,
                  ),
                  myExpandedWidget(
                    context,
                    'الاستطلاعات',
                    [
                      myListTile(
                        context,
                        'استطلاع الجمهور',
                        Icons.poll,
                        SurveyScreen(), // بدلي الصفحات حقها بعدين
                      ),
                      myListTile(
                        context,
                        'استطلاع الموظفين',
                        Icons.group,
                        pageemplo(), // بدلي الصفحات حقها بعدين
                      ),
                      myListTile(
                        context,
                        'استطلاع الزوار',
                        Icons.person_search_sharp,
                        pagevisit(), // بدلي الصفحات حقها بعدين
                      ),
                    ],
                    EneftyIcons.note_2_outline,
                  ),
                  myExpandedWidget(
                    context,
                    'التواصل',
                    [
                      myListTile(
                        context,
                        'تواصل معنا',
                        Icons.contactless_outlined,
                        const ContactForm(), // بدلي الصفحات حقها بعدين
                      ),
                      myListTile(
                        context,
                        'التوظيف',
                        Icons.people_alt,
                        const emploeeykey(), // بدلي الصفحات حقها بعدين
                      ),
                      myListTile(
                        context,
                        'البلاغات والشكاوي',
                        Icons.event_note_outlined,
                        const problem(), // بدلي الصفحات حقها بعدين
                      ),
                    ],
                    EneftyIcons.message_circle_outline,
                  ),
                  myListTile(
                    context,
                    'المتجر',
                    EneftyIcons.shop_outline,
                    const store(), // بدلي الصفحات حقها بعدين
                  ),
                ],
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

Widget myListTile(
    BuildContext context, String title, IconData icon, Widget screenName) {
  return GestureDetector(
    onTap: () => Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => screenName,
      ),
      (route) => false,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
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
      iconPlacement: ExpandablePanelIconPlacement.left,
    ),
    collapsed: const Row(),
    header: SizedBox(
      height: 40,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
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
        children: children,
      ),
    ),
  );
}
