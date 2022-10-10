import 'package:badges/badges.dart';

import 'package:flutter/material.dart';

Widget person(
    {String? image, String? username, String? subtitle, required bool? ic}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Container(
      height: 141,
      width: 365,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color: const Color(0xFFF7F8F8)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 7),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Badge(
                    elevation: 0,
                    padding: const EdgeInsets.all(6),
                    borderSide: const BorderSide(width: 1, color: Colors.white),
                    badgeColor: Colors.green,
                    position: const BadgePosition(bottom: 55, end: 3),
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          // border: Border.all(width: 5, color: Colors.white),
                          image: DecorationImage(
                            image: AssetImage(image!),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Image.asset(
                    'assets/images/star.png',
                    height: 53,
                    width: 45,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    title: Text(
                      username!,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF263257),
                          fontSize: 18),
                    ),
                    subtitle: Text(
                      subtitle!,
                      style: const TextStyle(
                          color: Color(0xFF7D8BB7),
                          fontSize: 13,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 130,
                          // color: Colors.grey,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF7F8F8),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                            'Appointment',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF222E54)),
                          ),
                        ),
                      ),
                      ic == true
                          ? Container(
                              width: 34,
                              height: 34,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xFFF7F8F8)),
                              child: IconButton(
                                iconSize: 20,
                                icon: const Icon(Icons.message_rounded,
                                    color: Color(0xFFB28CFF)),
                                onPressed: () {},
                              ),
                            )
                          : Container(),
                      const SizedBox(
                        width: 10,
                      ),
                      ic == true
                          ? Container(
                              width: 34,
                              height: 34,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xFFF7F8F8)),
                              child: IconButton(
                                iconSize: 20,
                                icon: const Icon(Icons.favorite,
                                    color: Color(0xFFB28CFF)),
                                onPressed: () {},
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
