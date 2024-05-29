import 'package:cocosite/common/colorExtension.dart';
import 'package:cocosite/commonWidget/roundButton.dart';
import 'package:cocosite/view/login/loginView.dart';
import 'package:cocosite/view/login/signUpView.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
            SizedBox(
              height: media.width * 0.3,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    "assets/images/cocosite.png",
                    width: media.width * 0.5,
                    height: media.height * 0.5,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),

            Text(
              "Selamat Datang, di CocoSite.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.secondaryText, fontSize: 16, fontWeight: FontWeight.w600
              ),
            ),

            SizedBox(
              height: media.width * 0.1,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Roundbutton(
                title: "Masuk",
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: media.width * 0.1,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Roundbutton(
                title: "Daftar untuk membaut akun",
                type: RoundbuttonType.textPrimary,
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}