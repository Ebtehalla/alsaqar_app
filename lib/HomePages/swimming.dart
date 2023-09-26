import 'package:flutter/material.dart';

class swimming extends StatefulWidget {
  const swimming({super.key});

  @override
  State<swimming> createState() => _swimmingState();
}

class _swimmingState extends State<swimming> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          const SizedBox(height: 18.0),

          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 49, 140, 41),
              borderRadius: BorderRadius.circular(60),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            width: 400,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Center(
              child: Text(
                ' بادر بالأشتراك في برنامج العلاج الطبيعي',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10.0), // Add a SizedBox to adjust spacing

          const Divider(
            // Add a Divider widget
            thickness: 1.0, // Set the desired thickness of the line
            color: Colors.grey, // Set the desired color of the line
            indent: 50.0, // Set the desired indent (left padding) of the line
            endIndent:
                50.0, // Set the desired end indent (right padding) of the line
          ),

          const SizedBox(height: 10.0), // Add a SizedBox to adjust spacing

          const Image(
            image: AssetImage('assets/علاج-طبيعي.jpg'),
            width: 450,
            height: 450,
          ),
        ],
      ),
    );
  }
}
