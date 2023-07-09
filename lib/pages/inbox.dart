// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:myspemob/assets/constant.dart';
import 'package:myspemob/pages/magang.dart';
import 'package:myspemob/pages/views/profile.dart';
import 'package:myspemob/pages/reschedule.dart';
import 'package:myspemob/pages/views/list.dart';

import 'homepage.dart';

class inboxPage extends StatelessWidget {
  inboxPage({super.key, required this.title, required this.desc});

  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text('Inbox', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      body: SingleChildScrollView(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => reschedulePage(desc: desc, title: title),
              ),
            );
          },
          child: Card(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/images/miko.jpg",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yae Miko",
                      style: textTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Kapan Bimbingan Mas?",
                      style: textTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      // NAVIGATION BOTTOM
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              width: 24,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/chat-bubble.png',
              width: 24,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/history.png',
              width: 24,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/user.png',
              width: 24,
              height: 24,
            ),
            label: '',
          ),
        ],
        onTap: (int index) {
          // Panggil fungsi yang sesuai untuk setiap item yang diklik
          switch (index) {
            case 0:
              // Navigasi ke halaman Home
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(
                          desc: '',
                          title: '',
                        )),
              );
              break;
            case 1:
              // Navigasi ke halaman Forum
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const magangPage(
                          desc: '',
                          title: '',
                        )),
              );
              break;
            case 2:
              // Navigasi ke halaman History
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => listPage(
                          desc: '',
                          title: '',
                        )),
              );
              break;
            case 3:
              // Navigasi ke halaman Profile
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => profilePage(desc: '', title: '',
                        )),
              );
              break;
          }
        },
      ),
    );
  }
}
