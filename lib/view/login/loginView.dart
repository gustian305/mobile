import 'package:cocosite/common/colorExtension.dart';
import 'package:cocosite/commonWidget/roundButton.dart';
import 'package:cocosite/commonWidget/roundIconButton.dart';
import 'package:cocosite/commonWidget/roundTextField.dart';
import 'package:cocosite/view/login/resetPasswordView.dart';
import 'package:cocosite/view/login/signUpView.dart';
import 'package:cocosite/view/onBoarding/onBoardingView.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20, 
            horizontal: 20
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              
              Text(
                "Masuk", 
                style: TextStyle(
                  color: TColor.primaryText, 
                  fontSize: 30, 
                  fontWeight: FontWeight.w800
                ),
              ),
          
              Text(
                "Masukan email dan kata sandi anda untuk memulai sesi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.secondaryText, 
                  fontSize: 14, 
                  fontWeight: FontWeight.w500
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              RoundTextField(
                hintText: "Email", 
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(
                height: 20,
              ),

              RoundTextField(
                hintText: "Kata sandi", 
                controller: txtPassword,
                obscureText: true,
              ),

              const SizedBox(
                height: 20,
              ),

              Roundbutton(
                title: "Masuk",
                onPressed: () {

                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const OnBoardingView()
                    )
                  );
                },
              ),

              const SizedBox(
                height: 15,
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const ResetPasswordView()
                    )
                  );
                },
                child: Text(
                  "Lupa Kata sandi?",
                  style: TextStyle(
                    color: TColor.secondaryText, 
                    fontSize: 14, 
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              Text(
                  "Masuk dengan Akun lain",
                  style: TextStyle(
                    color: TColor.secondaryText, 
                    fontSize: 14, 
                    fontWeight: FontWeight.w500
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

              RoundIconButton(
                title: " facebook", 
                icon: "assets/images/facebook.png", 
                color:const Color(0xff367fc0),
                onPressed: () {
                  
                },  
              ),

              const SizedBox(
                  height: 15,
              ),

              RoundIconButton(
                title: " google", 
                icon: "assets/images/google.png", 
                color: const Color(0xFFDD3535),
                onPressed: () {
                  
                },  
              ),

              const SizedBox(
                  height: 15,
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const SignUpView()
                    ),
                  );
                }, 
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Belum punya akun?",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      " Daftar",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}