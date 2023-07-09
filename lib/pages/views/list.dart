// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:myspemob/assets/constant.dart';
import 'package:myspemob/pages/magang.dart';
import 'package:myspemob/pages/views/profile.dart';

class listPage extends StatelessWidget {
  listPage({super.key, required this.title, required this.desc});

  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text('Whezys', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 35,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text("About",
                    style: textTextStyle.copyWith(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Text("Aplikasi ini merupakan aplikasi berbasis Mobile tentang penjadwalan Tugas Akhir, Magang dan Studi Independen, yang dikembangkan dengan menggunakan Flutter, User juga dapat merubah penjadwalan tersebut.",
                    style: textTextStyle.copyWith(fontSize: 15, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text("Our Team",
                    style: textTextStyle.copyWith(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/focalors.jpg"),
                    ),
                    SizedBox(height: 10),
                    Text("Imam Fauzi",
                    style: textTextStyle.copyWith(fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Text("NIM - 20200801063")
                  ],
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/himeko.jpg"),
                    ),
                    SizedBox(height: 10),
                    Text("Oliver Pradana",
                    style: textTextStyle.copyWith(fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Text("NIM - 20200801004")
                  ],
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/miko.jpg"),
                    ),
                    SizedBox(height: 10),
                    Text("Emmanuel Leonardo",
                    style: textTextStyle.copyWith(fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Text("NIM - 20200801001")
                  ],
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/herta.jpg"),
                    ),
                    SizedBox(height: 10),
                    Text("Rayyan Muzaffar",
                    style: textTextStyle.copyWith(fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Text("NIM - 20200801007")
                  ],
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/anime.jpg"),
                    ),
                    SizedBox(height: 10),
                    Text("Rio Ferdinand Handoyo",
                    style: textTextStyle.copyWith(fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Text("NIM - 20200801055")
                  ],
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        )
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
                    builder: (context) => profilePage(
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
