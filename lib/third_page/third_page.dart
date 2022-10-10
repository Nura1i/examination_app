import 'package:examination_app/anketas/anketa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class third_page extends StatefulWidget {
  const third_page({super.key});

  @override
  State<third_page> createState() => _third_pageState();
}

class _third_pageState extends State<third_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: .0,
        foregroundColor: const Color(0xFF222E54),
        centerTitle: true,
        title: const Text('Top Doctor',
            style: TextStyle(color: Color(0xFF232F55), fontSize: 19)),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 362,
                height: 54,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xFFF7F8F8)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(CupertinoIcons.search),
                      hintText: 'Search Doctor',
                      hintStyle: TextStyle(color: Color(0xFF8A96BC))),
                ),
              ),
            ),
          ),
          Container(
            height: 710,
            width: 350,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          person(
                              image: 'assets/images/man_face.png',
                              subtitle: 'Heart Surgeon, London, England',
                              username: 'Dr. Rodger Struck',
                              ic: true),
                          person(
                              image: 'assets/images/girl_2_face.png',
                              subtitle: 'Heart Surgeon, London, England',
                              username: 'Dr. Kathy Pacheco',
                              ic: true),
                          person(
                              image: 'assets/images/girl_5.png',
                              subtitle: 'General Dentist',
                              username: 'Dr. Lorri Warf',
                              ic: true),
                          person(
                              image: 'assets/images/girl_4.png',
                              subtitle: 'Heart Surgeon, London, England',
                              username: 'Dr. Chris Glasser',
                              ic: true),
                          person(
                              image: 'assets/images/girl_face.png',
                              subtitle: 'General Dentist',
                              username: 'Dr. Kenneth Allen',
                              ic: true)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
