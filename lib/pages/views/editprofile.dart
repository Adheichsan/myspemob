// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:myspemob/pages/homepage.dart';
import 'package:myspemob/pages/inbox.dart';
import 'package:myspemob/pages/views/history.dart';
import 'package:myspemob/pages/views/profile.dart';

import '../../assets/constant.dart';

class editprofilePage extends StatelessWidget {
  editprofilePage({super.key, required this.title, required this.desc});

  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/images/zee.jpg"),
                ),
                SizedBox(height: 32,),
                Align(
                  alignment: Alignment.center,
                  child: Text("Edit Profile",
                  style: textTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                SizedBox(height: 35,),
                Center(
                  child: Column(
                    children: [
                      Text("Imam Fauzi",
                      style: textTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text("20200801145",
                      style: textTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Edit"),
                  style: ElevatedButton.styleFrom(
                    primary: tncButtonColor,
                    minimumSize: Size(100, 47),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Masukkan Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    )
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Masukkan Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    )
                  ),
                ),
                SizedBox(height: 150),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      }, child: Text("Simpan"),
                      style: ElevatedButton.styleFrom(
                        primary: tncButtonColor,
                        minimumSize: Size(85, 42),
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )
                      ),
                    ),
                  ),
                )
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