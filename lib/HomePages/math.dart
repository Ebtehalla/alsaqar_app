import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';

class Mathsport extends StatefulWidget {
  const Mathsport({Key? key}) : super(key: key);

  @override
  State<Mathsport> createState() => _MathsportState();
}

class _MathsportState extends State<Mathsport> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          const SizedBox(height: 18.0),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: const Color.fromARGB(255, 164, 127, 162),
                  width: 2.0,
                  style: BorderStyle.none, // نمط الحافة المتقطعة
                ),
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 115, 62, 97).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(6, 6),
                  ),
                  const BoxShadow(
                    color: Color.fromARGB(255, 236, 233, 233),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(-6, -6),
                  ),
                ],
              ),
              width: 500, // تغيير عرض الحاوية
              height: 300,
              child: const Center(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'المباراة القادمة',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            // SizedBox(
                            //   height: 80,
                            //   width: 100,
                            // ),
                            Center(
                              child: CircleAvatar(
                                radius: 75,
                                backgroundImage: AssetImage('assets/nour.jpg'),
                              ),
                            ),
                            Text('نادي النور'),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            'vs',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            // SizedBox(
                            //   height: 100,
                            //   width: 100,
                            // ),
                            Center(
                              child: CircleAvatar(
                                radius: 75,
                                backgroundImage:
                                    AssetImage('assets/Alsaaqerclub.jpg'),
                              ),
                            ),
                            Text('نادي الصقر'),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'الموعد',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 2),
                                Icon(EneftyIcons.clock_2_outline),
                              ],
                            ),
                            Text('الجمعة, 17 سبتمبر 3:25م')
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'المكان',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 2),
                                Icon(EneftyIcons.location_outline),
                              ],
                            ),
                            Text('ملعب القصيم الدولي'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
