import 'package:examination_app/anketas/anketa.dart';
import 'package:examination_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../second_page/second_page.dart';

int sup = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home_filled,
              color: Color(0xFFB28CFF),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: Color(0xFFB28CFF),
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Color(0xFFB28CFF),
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.plus_circled,
              color: Color(0xFFB28CFF),
            ),
            label: 'Plus',
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 414,
              height: 320,
              decoration: BoxDecoration(
                  color: home_clp, borderRadius: BorderRadius.circular(25)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 5),
                      Transform.rotate(
                        angle: 1.57,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.stacked_bar_chart_rounded,
                              color: Colors.white,
                              size: 31,
                            )),
                      ),
                      const SizedBox(
                        width: 278,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 65.3.w,
                        height: 65.3.h,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/face_1.png'))),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                    child: Text('Welcome Back',
                        style: TextStyle(color: Colors.white, fontSize: 19)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Let's find",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    child: Text('your top doctor',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 362,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.5)),
                      child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '  Search health issue.....',
                              hintStyle: TextStyle(color: home_clp),
                              prefixIcon: Icon(
                                CupertinoIcons.search,
                                size: 30,
                              ))),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Categories',
                style: TextStyle(color: Color(0xFF232F55), fontSize: 20),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/all.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/cardiology.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/medicine.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/general.png'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    left: 47,
                  ),
                  child: Text(
                    'All',
                    style: TextStyle(color: Color(0xFF7D8BB7)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 52,
                  ),
                  child: Text('Cardiology',
                      style: TextStyle(color: Color(0xFF7D8BB7))),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 35,
                  ),
                  child: Text('Medicine',
                      style: TextStyle(color: Color(0xFF7D8BB7))),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 40,
                  ),
                  child: Text('General',
                      style: TextStyle(color: Color(0xFF7D8BB7))),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    width: 367,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                            width: 2.0, color: const Color(0xFFF7F8F8)),
                        color: Colors.white),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 214, 214, 214),
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/girl_face.png'))),
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Icon(Icons.star_border_outlined),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, left: 4),
                                    child: Text('4.8'),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Dr.Maria Waston',
                                style: TextStyle(
                                    color: Color(0xFF263257),
                                    fontSize: 18,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Heart Surgeon, London, England',
                                style: TextStyle(
                                    color: Color(0xFF7D8BB7),
                                    fontSize: 13,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 10),
                              child: Container(
                                height: 35,
                                width: 130,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFF7F8F8),
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      sup = 1;
                                    });

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const Second_Page(),
                                        ));
                                  },
                                  child: const Text('Appointment',
                                      style:
                                          TextStyle(color: Color(0xFF222E54))),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    width: 367,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                            width: 2.0, color: const Color(0xFFF7F8F8)),
                        color: Colors.white),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 233, 227, 180),
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/girl_2_face.png'))),
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Icon(Icons.star_border_outlined),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, left: 4),
                                    child: Text('4.8'),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Dr. Stevi Jessi',
                                style: TextStyle(
                                    color: Color(0xFF263257),
                                    fontSize: 18,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Generals Dentist',
                                style: TextStyle(
                                    color: Color(0xFF7D8BB7),
                                    fontSize: 13,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 10),
                              child: Container(
                                height: 35,
                                width: 130,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFF7F8F8),
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      sup = 2;
                                    });
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const Second_Page(),
                                        ));
                                  },
                                  child: const Text('Appointment',
                                      style:
                                          TextStyle(color: Color(0xFF222E54))),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                person(
                    ic: false,
                    subtitle: 'Heart Surgeon, London , England',
                    image: 'assets/images/girl_4.png',
                    username: 'Dr. Salvador Wats')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
