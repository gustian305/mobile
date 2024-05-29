import 'package:cocosite/view/login/welcomeView.dart';
import 'package:flutter/material.dart';

class StartUpView extends StatefulWidget {
  const StartUpView({super.key});

  @override
  State<StartUpView> createState() => _StartUpViewState();
}

class _StartUpViewState extends State<StartUpView> {
  
  @override
  void initState() {
      super.initState();
      goWelcomePage();
    }

    void goWelcomePage() async {
      await Future.delayed(const Duration(seconds: 2));
      welcomePage();
    }

    void welcomePage() {
      Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (context) => const WelcomeView()));
    }
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
              "assets/images/cocosite.png",
              width: media.width * 0.5,
              height: media.height * 0.5,
              fit: BoxFit.contain,
                ),
              ),
            ],
          )
          
        ],
      ),
    );
  }
}