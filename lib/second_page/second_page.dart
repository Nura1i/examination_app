import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home/basic_page.dart';
import '../third_page/third_page.dart';

class Second_Page extends StatefulWidget {
  const Second_Page({Key? key}) : super(key: key);

  @override
  State<Second_Page> createState() => _Second_PageState();
}

class _Second_PageState extends State<Second_Page> {
  late int n = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: .0,
        foregroundColor: const Color(0xFF222E54),
        centerTitle: true,
        title: const Text('Appointment',
            style: TextStyle(color: Color(0xFF232F55))),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 78,
              height: 81,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 234, 234),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(sup == 1
                          ? 'assets/images/girl_face.png'
                          : 'assets/images/girl_2_face.png'))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 5),
            child: Text(
              sup == 1 ? 'Dr. Maria Waston' : 'Dr. Stevi Jessi',
              style: TextStyle(
                  fontSize: 21.w,
                  color: const Color(0xFF263257),
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/cardio.png'),
                height: 13.23,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6, right: 15, top: 2),
                child: Text(
                  sup == 1 ? 'Cardio Specialist' : 'General Dentist',
                  style:
                      TextStyle(color: const Color(0xFF7D8BB7), fontSize: 15.h),
                ),
              )
            ],
          ),
          Container(
            width: 360,
            height: 104,
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFB28CFF)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 2),
                  child: Container(
                    width: 104,
                    height: 76,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '350+',
                          style: TextStyle(
                              color: Color(0xFFB28CFF),
                              fontSize: 29,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Patients',
                            style: TextStyle(
                                color: Color(0xFF8A96BC), fontSize: 13))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 104,
                    height: 76,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '15+',
                          style: TextStyle(
                              color: Color(0xFF9DEAC0),
                              fontSize: 29,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Exp. years',
                            style: TextStyle(
                                color: Color(0xFF8A96BC), fontSize: 13))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 104,
                    height: 76,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '284+',
                          style: TextStyle(
                              color: Color(0xFFFF9A9A),
                              fontSize: 29,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Reviews',
                            style: TextStyle(
                                color: Color(0xFF8A96BC), fontSize: 13))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 27, left: 30, bottom: 15),

            //margin: EdgeInsets.only(right: 210, top: 30),
            child: const Text(
              'About Doctor',
              style: TextStyle(
                  color: Color(0xFF263257),
                  fontSize: 21,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              sup == 1
                  ? 'Dr. Maria Waston is the top most Cardiologist specialist in Nanyang Hospotalat London. She is available for private consultation.'
                  : 'Dr. Stevi Jessi is the top  General Dentist specialist. She is available for private consultation.',
              style: TextStyle(color: Color(0xFF8A96BC), fontSize: 15),
            ),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 27, left: 30, bottom: 15),

                //margin: EdgeInsets.only(right: 210, top: 30),
                child: const Text(
                  'Schedules',
                  style: TextStyle(
                      color: Color(0xFF263257),
                      fontSize: 21,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                width: 150,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Augest',
                  style: TextStyle(
                      color: Color(0xFF8A96BC),
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xFF222E54),
                    )),
              )
            ],
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Image(
                image: AssetImage('assets/images/dates.png'),
              )),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'Visit Hour',
              style: TextStyle(
                  color: Color(0xFF263257),
                  fontSize: 21,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: const Image(
                image: AssetImage('assets/images/times.png'),
              )),
          Container(
            width: 330,
            height: 50,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFFB28CFF)),
            child: TextButton(
              clipBehavior: Clip.none,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const third_page()));
              },
              child: const Text(
                'Book Appointment',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
