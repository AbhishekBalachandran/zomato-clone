import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:zomato/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:zomato/view/home_screen/home_screen.dart';
import 'package:zomato/view/loginpage/loginpage.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black),
        title: Text(
          'OTP Verification',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Center(
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavBar(),
                  )),
              child: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  'Skip',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                )),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              Center(child: Text('We have sent a verification code to')),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                '+91-1234567890',
                style: TextStyle(fontWeight: FontWeight.w700),
              )),
              SizedBox(
                height: 40,
              ),
              Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyDecorationWith(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                submittedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    color: Color.fromRGBO(234, 239, 243, 1),
                  ),
                ),
                validator: (s) {
                  // return s == '2222' ? null : 'Pin is incorrect';
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text('Check text messages for your OTP')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn\'t get the OTP? ',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Resend SMS in 18s',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ]),
          ),
          SizedBox(
            height: 400,
          ),
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),)),
            child: Center(
                child: Text(
              'Go back to login methods',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
            )),
          )
        ]),
      ),
    );
  }
}
