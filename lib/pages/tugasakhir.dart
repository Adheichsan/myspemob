// ignore_for_file: unused_local_variable, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:myspemob/assets/constant.dart';
import 'package:intl/intl.dart';
import 'package:myspemob/pages/homepage.dart';
import 'package:myspemob/pages/magang.dart';
import 'package:myspemob/pages/reschedule.dart';
import 'package:myspemob/pages/views/profile.dart';

class tugasAkhirPage extends StatelessWidget {
  const tugasAkhirPage({Key? key, required String desc, required String title})
      : super(key: key);

  void _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );

    if (selected != null) {
      setState(() {
        // Gunakan nilai tanggal yang dipilih sesuai kebutuhan Anda
        var selectedDate = DateFormat('yyyy-MM-dd').format(selected);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var selectedDate;
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
          margin: const EdgeInsets.symmetric(horizontal: 32),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Form Tugas Akhir",
                textAlign: TextAlign.center,
                style: textTextStyle.copyWith(fontWeight: bold, fontSize: 24),
              ),
              const SizedBox(
                height: 11,
              ),
              const Text(
                "Silahkan isi terlebih dahulu form pengajuan untuk Bimbingan Tugas Akhir",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Nama Mahasiswa",
                          textAlign: TextAlign.left,
                          style: textTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Masukkan Nama Anda",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Judul Tugas Akhir",
                          textAlign: TextAlign.left,
                          style: textTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Masukkan Judul Tugas Akhir",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "NIM",
                          textAlign: TextAlign.left,
                          style: textTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Masukan NIM",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Nama Dosen Pebimbing",
                          textAlign: TextAlign.left,
                          style: textTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Masukan Nama Dosen Pebimbing",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Pilih Jadwal",
                          textAlign: TextAlign.left,
                          style: textTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        onTap: () {
                          _selectDate(context);
                        },
                        controller: TextEditingController(
                            text:
                        selectedDate), // Ganti dengan variabel String yang menyimpan tanggal yang dipilih
                        decoration: InputDecoration(
                          hintText: "Masukkan tanggal",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'profil');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryButtonColor,
                      minimumSize: const Size(110, 42),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text("Kirim"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // BOTTOM NAVIGATION

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
                MaterialPageRoute(builder: (context) => const magangPage(desc: '', title: '',)),
              );
              break;
            case 2:
              // Navigasi ke halaman History
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const reschedulePage(desc: '', title: '',)),
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

void setState(Null Function() param0) {}
