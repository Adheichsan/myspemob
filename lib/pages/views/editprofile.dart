// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';

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
                  backgroundImage: AssetImage("assets/images/focalors.jpg"),
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
    );
  }
}