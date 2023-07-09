import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myspemob/assets/constant.dart';
import 'package:myspemob/pages/login.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: mainPage(),
    );
  }
}

class mainPage extends StatelessWidget {

  const mainPage({super.key});

  static const judul = "lorem ipsum";
  static const deccc = "lorem ipsum";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                  child: 
                  Image.asset(
                    'assets/images/hihang.png',
                    width: 400, height: 400,
                  ),
              ),
              Text("Whezys",
              style: textTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.bold),),
              const SizedBox(height: 64),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tncButtonColor,
                  ),
                  onPressed: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => loginPage(
                        title: '',
                        desc: '',
                        )
                      )
                    );
                  }, 
                  child: Text("Get Started !", style: whiteTextStyle.copyWith(fontWeight: bold),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}