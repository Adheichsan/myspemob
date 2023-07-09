// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myspemob/assets/constant.dart';
// import 'package:myspemob/firebase_options.dart';
import 'package:myspemob/pages/homepage.dart';
import 'package:myspemob/pages/register.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {

  const LoginPage({super.key});

  static const judul = "lorem ipsum";
  static const deccc = "lorem ipsum";


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
                    width: 150, height: 150,
                  ),
              ),
              
              Text("Welcome Back", style: textTextStyle.copyWith(fontSize: 30, fontWeight: bold),),
              const SizedBox(height: 11,),
              Text("hihang hoheng hihang hoheng hihang hoheng hihang hoheng hihang hoheng", style: secondaryTextStyle.copyWith(fontSize: 12),
              textAlign: TextAlign.center,),
              const SizedBox(
                height: 64,
              ),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "E-mail",
                    style: textTextStyle.copyWith(fontSize: 12, fontWeight: bold
                    ),
                  ),
                  const SizedBox(height: 10,),
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
                        hintStyle: textTextStyle.copyWith(fontSize: 12, color: textColor.withOpacity(0.6)),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                      )
                    ),
                  ),
                  const SizedBox(height: 15,),

                  Text(
                    "Password",
                    style: textTextStyle.copyWith(fontSize: 12, fontWeight: bold
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Your Password",
                        hintStyle: textTextStyle.copyWith(fontSize: 12, color: textColor.withOpacity(0.6)),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                        suffixIcon: const Icon(Icons.visibility_off)
                      )
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(5), 
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text("Remember Me", style: greyTextStyle.copyWith(fontSize: 12),)
                    ],
                  ),
                  Text("Forgot Password ?", style: textTextStyle.copyWith(fontSize: 12),)
                ],
              ),
              const SizedBox(height: 32),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryButtonColor,
                  ),
                  onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage(desc: '', title: '',)),
                    );
                  }, 
                  child: Text("LOGIN", style: whiteTextStyle.copyWith(fontWeight: bold),),
                ),
              ),
              const SizedBox(height: 8),
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
                      builder: (context) => DetailPage(
                        title: judul,
                        desc: deccc,
                        )
                      )
                    );
                  }, 
                  child: Text("REGISTER", style: whiteTextStyle.copyWith(fontWeight: bold),),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You Don't have an account yet? ", style: secondaryTextStyle.copyWith(fontSize: 12),),
                  Text("Sign Up", style: tncTextStyle.copyWith(fontSize: 12),),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}