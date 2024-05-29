import 'package:cocosite/common/colorExtension.dart';
import 'package:cocosite/commonWidget/roundButton.dart';
import 'package:cocosite/commonWidget/roundTextField.dart';
import 'package:flutter/material.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => NewPasswordViewState();
}

class NewPasswordViewState extends State<NewPasswordView> {

  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

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
                "Kata sandi baru", 
                style: TextStyle(
                  color: TColor.primaryText, 
                  fontSize: 30, 
                  fontWeight: FontWeight.w800
                ),
              ),
          
              Text(
                "Masukan kata sandi baru anda",
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
                hintText: "Kata sandi baru", 
                controller: txtPassword,
              ),

              const SizedBox(
                height: 20,
              ),

              RoundTextField(
                hintText: "Konfirmasi Kata sandi baru", 
                controller: txtPassword,  
              ),

              const SizedBox(
                height: 20,
              ),

              Roundbutton(
                title: "Konfirmasi",
                onPressed: () {

                }
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