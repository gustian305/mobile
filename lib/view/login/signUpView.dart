import 'package:cocosite/common/colorExtension.dart';
import 'package:cocosite/commonWidget/roundButton.dart';
import 'package:cocosite/commonWidget/roundTextField.dart';
import 'package:cocosite/view/login/loginView.dart';
import 'package:cocosite/view/login/otpView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => SignUpViewState();
}

class SignUpViewState extends State<SignUpView> {

  TextEditingController txtName = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtAddress = TextEditingController();

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              Text(
                "Daftar", 
                style: TextStyle(
                  color: TColor.primaryText, fontSize: 30, fontWeight: FontWeight.w800
                ),
              ),
          
              Text(
                "Daftarkan akun anda untuk memulai sesi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.secondaryText, fontSize: 14, fontWeight: FontWeight.w500
                ),
              ),

              const SizedBox(height: 25,),

              RoundTextField(
                hintText: "Nama", 
                controller: txtName,
              ),
              const SizedBox(height: 10,),
              RoundTextField(
                hintText: "Email", 
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10,),
              RoundTextField(
                hintText: "Nomor Telepon", 
                controller: txtPhone,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 10,),
              RoundTextField(
                hintText: "Alamat", 
                controller: txtAddress,
                keyboardType: TextInputType.streetAddress,
              ),
              const SizedBox(height: 10,),

              RoundTextField(
                hintText: "Kata sandi", 
                controller: txtPassword,
                obscureText: true,
              ),
              const SizedBox(height: 10,),
              RoundTextField(
                hintText: "Konfirmasi Kata sandi", 
                controller: txtConfirmPassword,
                obscureText: true,
              ),

              const SizedBox(height: 20,),

              Roundbutton(
                title: "Daftar",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OTPView()));
                }
              ),

              const SizedBox(height: 15,),

              
              

              const SizedBox(
                  height: 15,
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()));
                },  
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Sudah punya akun?",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      " Masuk",
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