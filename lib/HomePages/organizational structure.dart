import 'package:flutter/material.dart';

// ignore: camel_case_types
class organizational_structure extends StatefulWidget {
  // تاخذين اسم الكلاس:
  const organizational_structure({super.key});

  @override
  State<organizational_structure> createState() =>
      _organizational_structureState();
}

class _organizational_structureState extends State<organizational_structure> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.green,
        height: 500,
        child: const Center(
          child: Column(
            children: [
              Text('المحتوى هنا'),
            ],
          ),
        ),
      ),
    );
  }
}
