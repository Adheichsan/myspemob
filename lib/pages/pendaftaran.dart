// ignore_for_file: must_be_immutable, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myspemob/assets/constant.dart';
import 'package:myspemob/pages/homepage.dart';
import 'package:myspemob/pages/inbox.dart';
import 'package:myspemob/pages/magang.dart';
import 'package:myspemob/pages/tugasakhir.dart';
import 'package:myspemob/pages/views/history.dart';
import 'package:myspemob/pages/views/profile.dart';

class pendaftaranPage extends StatelessWidget {
  pendaftaranPage({super.key, required this.title, required this.desc});

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
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [



              // BUTTON BIMBINGAN TUGAS AKHIR/STUPEN
              Text("Pendaftaran",
              textAlign: TextAlign.center,
              style: textTextStyle.copyWith(
                fontWeight: FontWeight.bold, fontSize: 24,
              ),),
              SizedBox(height: 50,),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 32,),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tncButtonColor,
                  ),
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => magangPage(title: title, desc: desc)));
                  }, 
                  child: Text("Bimbingan Magang/Stupen",
                  style: whiteTextStyle.copyWith(fontWeight: bold),
                  ),
                ),
              ),
              SizedBox(height: 20),



              // BUTTON PENDAFTARAN TUGAS AKHIR
               Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 32,),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tncButtonColor,
                  ),
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => tugasAkhirPage(title: title, desc: desc)));
                  }, 
                  child: Text("Bimbingan Tugas Akhir",
                  style: whiteTextStyle.copyWith(fontWeight: bold),
                  ),
                ),
              ),
            ],
          ),
        )
      ),



      // BUTTON NAVIGATION
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
                MaterialPageRoute(builder: (context) => HomePage(desc: '', title: '',)),
              );
              break;
            case 1:
              // Navigasi ke halaman Forum
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => inboxPage(desc: '', title: '',)),
              );
              break;
            case 2:
              // Navigasi ke halaman History
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => historyPage(desc: '', title: '',)),
              );
              break;
            case 3:
              // Navigasi ke halaman Profile
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profilePage(desc: '', title: '',)),
              );
              break;
          }
        },
      ),
    );
  }
}