import 'package:cocosite/common/colorExtension.dart';
import 'package:cocosite/commonWidget/roundButton.dart';
import 'package:cocosite/commonWidget/roundTextField.dart';
import 'package:cocosite/view/login/newPasswordView.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => ResetPasswordViewState();
}

class ResetPasswordViewState extends State<ResetPasswordView> {

  TextEditingController txtEmail = TextEditingController();

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
                "Lupa Kata sandi", 
                style: TextStyle(
                  color: TColor.primaryText, 
                  fontSize: 30, 
                  fontWeight: FontWeight.w800
                ),
              ),
          
              Text(
                "Masukan email untuk mengubah kata sandi anda",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.secondaryText, 
                  fontSize: 14, fontWeight: 
                  FontWeight.w500
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

              Roundbutton(
                title: "Kirim",
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const NewPasswordView()
                    ),
                  );
                },  
              ),

              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}