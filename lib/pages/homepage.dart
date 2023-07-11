import 'package:flutter/material.dart';
import 'package:myspemob/assets/constant.dart';
import 'package:myspemob/pages/inbox.dart';
import 'package:myspemob/pages/magang.dart';
import 'package:myspemob/pages/views/history.dart';
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
        title: const Text('RUBIKOM', style: TextStyle(color: Colors.black)),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => inboxPage(
                          title: '',
                          desc: ''
                        )),
              );
            },
            icon: Image.asset("assets/icons/email.png"),
          ),
        ],
      ),

      // KONTEN
      body: SingleChildScrollView(


        // KONTEN JADWAL MAGANG / STUDI INDEPENDEN
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => magangPage(desc: desc, title: title)),
                        );
                      },
                      child: Card(
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
                              "assets/images/magang.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
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
                              "Jadwal Magang/Studi Independen",
                              style: textTextStyle.copyWith(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const Row(
                              children: [
                                Text("Terjadwal")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // KONTEN AKHIR JADWAL MAGANG / STUDI INDEPENDEN



              // KONTEN JADWAL TUGAS AKHIR
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => tugasAkhirPage(title: title, desc: desc)));
                      },
                      child: Card(
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
                              "assets/images/tgsakhir.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
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
                                Text("Belum Ada Jadwal")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // KONTEN AKHIR JADWAL TUGAS AKHIR




              // PEMBATAS
              const SizedBox(height: 60),
              Text(
                "Student Help Center",
                style: textTextStyle.copyWith(fontSize: 15, fontWeight: bold),
              ),
              const SizedBox(height: 20),
              // AKHIR PEMBATAS


              

              // KONTEN RESCHEDULE
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => reschedulePage(title: title, desc: desc)));
                      },
                      child: Card(
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
                              "assets/images/re.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
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
                  ],
                ),
              ),
              // KONTEN AKHIR RESCHEDULE




              // KONTEN FORUM
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => inboxPage(title: title, desc: desc)));
                      },
                      child: Card(
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
                              "assets/images/forum.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:48),
              // KONTEN AKHIR FORUM



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
