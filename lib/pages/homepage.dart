import 'package:flutter/material.dart';
import 'package:myspemob/assets/constant.dart';
import 'package:myspemob/main.dart';
import 'package:myspemob/pages/inbox.dart';
import 'package:myspemob/pages/magang.dart';
import 'package:myspemob/pages/views/list.dart';
import 'package:myspemob/pages/views/profile.dart';
import 'package:myspemob/pages/reschedule.dart';
import 'package:myspemob/pages/tugasakhir.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key, required this.title, required this.desc});

  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text('Whezys', style: TextStyle(color: Colors.black)),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => inboxPage(
                          title: LoginPage.judul,
                          desc: LoginPage.deccc,
                        )),
              );
            },
            icon: Image.asset("assets/icons/email.png"),
          ),
        ],
      ),

      // KONTEN
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                "Schedule",
                style: textTextStyle.copyWith(fontSize: 15, fontWeight: bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 8,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 150,
                            child: Image.asset(
                              "assets/images/hp1.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 20,
                      child: SizedBox(
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jadwal Magang",
                              style: textTextStyle.copyWith(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const Row(
                              children: [
                                Text("Muhamad Bahrul Ulum, S.Kom, M.Kom")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      right: 20,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: homeButton,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      magangPage(title: title, desc: desc)));
                        },
                        child: Text(
                          "Daftar",
                          style: whiteTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 8,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 150,
                            child: Image.asset(
                              "assets/images/hp5.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 20,
                      child: SizedBox(
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jadwal Tugas Akhir",
                              style: textTextStyle.copyWith(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Row(
                              children: [
                                Text("Muhamad Bahrul Ulum, S.Kom, M.Kom")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      right: 20,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: homeButton,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => tugasAkhirPage(
                                      title: title, desc: desc)));
                        },
                        child: Text(
                          "Daftar",
                          style: whiteTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              Text(
                "Support",
                style: textTextStyle.copyWith(fontSize: 15, fontWeight: bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 8,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 150,
                            child: Image.asset(
                              "assets/images/hp4.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 20,
                      child: SizedBox(
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Reschedule",
                              style: textTextStyle.copyWith(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Row(
                              children: [Text("Perubahan Jadwal Sidang")],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      right: 20,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: homeButton,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => reschedulePage(
                                      title: title, desc: desc)));
                        },
                        child: Text(
                          "Daftar",
                          style: whiteTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 8,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 150,
                            child: Image.asset(
                              "assets/images/hp3.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 20,
                      child: SizedBox(
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discussion Forum",
                              style: textTextStyle.copyWith(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Row(
                              children: [Text("Forum diskusi antar mahasiswa")],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      right: 20,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: homeButton,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      inboxPage(title: title, desc: desc)));
                        },
                        child: Text(
                          "Forum",
                          style: whiteTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
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
                MaterialPageRoute(builder: (context) => listPage(desc: '', title: '',)),
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
