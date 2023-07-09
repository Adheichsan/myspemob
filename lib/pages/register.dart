import 'package:flutter/material.dart';
import 'package:myspemob/assets/constant.dart';
import 'package:myspemob/pages/homepage.dart';

// ignore: must_be_immutable
class DetailPage extends StatelessWidget {
  //constructor
  DetailPage({super.key, required this.title, required this.desc});

  //properti
  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/shape.png',
                  width: 150,
                  height: 150,
                ),
              ),
              Text(
                "Register",
                style: textTextStyle.copyWith(fontSize: 30, fontWeight: bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style:
                        textTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: "Input Your Name",
                            hintStyle: textTextStyle.copyWith(
                              fontSize: 12,
                              color: textColor.withOpacity(0.6)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17))),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Username",
                    style:
                        textTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Input Your Username",
                            hintStyle: textTextStyle.copyWith(
                                fontSize: 12,
                                color: textColor.withOpacity(0.6)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17))),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "E-Mail",
                    style:
                        textTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Input Your Email",
                            hintStyle: textTextStyle.copyWith(
                                fontSize: 12,
                                color: textColor.withOpacity(0.6)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17))),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Phone Number",
                    style:
                        textTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: whiteColor,
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Input Your Phone Number",
                            hintStyle: textTextStyle.copyWith(
                                fontSize: 12,
                                color: textColor.withOpacity(0.6)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17))),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Profession",
                    style:
                        textTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: whiteColor,
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Input your profession",
                            hintStyle: textTextStyle.copyWith(
                                fontSize: 12,
                                color: textColor.withOpacity(0.6)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17))),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Password",
                    style:
                        textTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Input Your Password",
                            hintStyle: textTextStyle.copyWith(
                                fontSize: 12,
                                color: textColor.withOpacity(0.6)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17))),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryButtonColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "REGISTER",
                    style: whiteTextStyle.copyWith(fontWeight: bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tncButtonColor,
                  ),
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage(desc: '', title: '',)),
                    );
                  },
                  child: Text(
                    "LOG IN",
                    style: whiteTextStyle.copyWith(fontWeight: bold),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
