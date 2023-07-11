// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:myspemob/assets/constant.dart';
import 'package:myspemob/pages/homepage.dart';
import 'package:myspemob/pages/inbox.dart';
import 'package:myspemob/pages/login.dart';
import 'package:myspemob/pages/views/editprofile.dart';
import 'package:myspemob/pages/views/history.dart';
import 'package:myspemob/pages/views/list.dart';

class profilePage extends StatelessWidget {
  profilePage({super.key, required this.title, required this.desc});

  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/imamf.jpg'),
              ),
              const SizedBox(height: 16),
              Text("Imam Fauzi",
              style: textTextStyle.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),),
              Text("NIM : 20200801063",
              style: textTextStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              )),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tncButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => editprofilePage(desc: '', title: '',)),
                    );
                  },
                  child: Text(
                    "Edit Profile",
                    style: whiteTextStyle.copyWith(fontWeight: bold),
                  )
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tncButtonColor,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => listPage(desc: '', title: '',)),
                    );
                  },
                  child: Text(
                    "About",
                    style: whiteTextStyle.copyWith(fontWeight: bold),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tncButtonColor,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    showDialog(context: context,
                     builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Konfirmasi"),
                        content: const Text("Apakah Kamu Yakin Ingin Keluar dari Akun?"),
                        backgroundColor: whiteColor,
                        actions: [
                          TextButton(onPressed: () {
                            Navigator.push(context,
                             MaterialPageRoute(builder: (context) => loginPage(title: '', desc: '',)));
                          }, child: Text("Yes"), 
                        ),
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: Text("No"),
                        ),
                        ],
                      );
                     }
                    );
                  },
                  child: Text(
                    "Log Out",
                    style: whiteTextStyle.copyWith(fontWeight: bold),
                  ),
                ),
              ),
              const SizedBox(height: 90,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/hihang.png",
                  height: 24,
                  width: 24,),
                  const Text("Rubikom"),
                ],
              ),
            ],
          ),
        ),
      ),
      
      
      
      // Navigation bottom
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
                    builder: (context) => HomePage(desc: '',title: '',)),
              );
              break;
            case 1:
              // Navigasi ke halaman Forum
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => inboxPage(desc: '',title: '',)),
              );
              break;
            case 2:
              // Navigasi ke halaman History
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => historyPage(desc: '',title: '',)),
              );
              break;
            case 3:
              // Navigasi ke halaman Profile
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => profilePage(desc: '',title: '',)),
              );
              break;
          }
        },
      ),
    );
  }
}
