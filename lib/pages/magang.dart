// ignore_for_file: unused_local_variable, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:myspemob/assets/constant.dart';
import 'package:intl/intl.dart';
import 'package:myspemob/pages/homepage.dart';
import 'package:myspemob/pages/inbox.dart';
import 'package:myspemob/pages/views/history.dart';
import 'package:myspemob/pages/views/profile.dart';

class magangPage extends StatelessWidget {
  const magangPage({Key? key, required String desc, required String title})
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
        title: const Text('RUBIKOM', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          
          // HEADER
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Form Magang",
                textAlign: TextAlign.center,
                style: textTextStyle.copyWith(fontWeight: bold, fontSize: 24),
              ),
              const SizedBox(
                height: 11,
              ),
              const Text(
                "Silahkan isi terlebih dahulu form pengajuan untuk Bimbingan Magang",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [

                  // FORM TEMA
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tema",
                          textAlign: TextAlign.left,
                          style: textTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Masukkan tema",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  
                  
                  // FORM JUDUL
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Judul Laporan",
                          textAlign: TextAlign.left,
                          style: textTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Masukkan Judul",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  
                  
                  
                  // FORM NIM
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
                  
                  
                  
                  // FORM FAKULTAS
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Fakultas",
                          textAlign: TextAlign.left,
                          style: textTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Masukan Fakultas Anda",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  
                  
                  
                  // FORM MITRA/PT
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Mitra/PT",
                          textAlign: TextAlign.left,
                          style: textTextStyle.copyWith(fontWeight: bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Masukan Nama Perusahaan",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  
                  
                  
                  // FORM TANGGAL MULAI
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tanggal Mulai",
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
                  const SizedBox(height: 16),
                  
                  
                  
                  // FORM TANGGAL SELESAI
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tanggal Selesai",
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
                      const SizedBox(height: 10),
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

void setState(Null Function() param0) {}
