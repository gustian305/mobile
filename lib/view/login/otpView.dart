
import 'package:cocosite/common/colorExtension.dart';
import 'package:cocosite/commonWidget/roundButton.dart';

import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OTPView extends StatefulWidget {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => OTPViewState();
}

class OTPViewState extends State<OTPView> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

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
                "We have sent an OTP to your Mobile", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.primaryText, 
                  fontSize: 30, 
                  fontWeight: FontWeight.w800
                ),
              ),
          
              Text(
                "Pleace check your mobile number\nContinue to change your password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.secondaryText, 
                  fontSize: 14, 
                  fontWeight: FontWeight.w500
                ),
              ),

              const SizedBox(height: 25,),  
              
              SizedBox(
                height: 60,
                child: OtpPinField(
                  key: _otpPinFieldController,
                  autoFillEnable: true,
                  textInputAction: TextInputAction.done,
                  onSubmit: (newCode) {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  onChange: (text) {
                    print('Enter on change pin is $text');
                  },
                  onCodeChanged: (code) {
                    print('onCodeChanged  is $code');
                  },
                  otpPinFieldStyle: const OtpPinFieldStyle(
                    defaultFieldBorderColor: Color(0xff7c7d7e),
                    activeFieldBorderColor: Color(0xFF5CC24E),
                    defaultFieldBackgroundColor: Colors.white,
                    activeFieldBackgroundColor: Colors.white,
                  ),
                  maxLength: 4,
                  showCursor: true,
                  cursorColor: Colors.indigo,
                  upperChild: const Column(
                    children: [
                      SizedBox(height: 30),
                      SizedBox(height: 20),
                    ],
                  ),
                  

                  showCustomKeyboard: false,
                  cursorWidth: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  otpPinFieldDecoration: OtpPinFieldDecoration.defaultPinBoxDecoration,
                ),
              ),
              

              const SizedBox(
                height: 30,
              ),

              Roundbutton(
                title: "Konfirmasi",
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                }
              ),
              TextButton(
                onPressed: () {}, 
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Didn't receive OTP?",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    Text(
                      " Click here",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                )
              )
              
            ],
          ),
        ),
      ),
    );
  }
}