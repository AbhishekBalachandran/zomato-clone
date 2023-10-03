import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:zomato/view/otp_screen/otp_screen.dart';

import '../../utils/image_constants/image_constants.dart';
import '../bottomsheet_login_page/bottomsheet_login_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  CountryCode? countryCode;
  final countryPicker = const FlCountryCodePicker();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(children: [
        Container(
          width: double.infinity,
          height: height / 3,
          child: Image.asset(
            ImageConstants.login_image,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            'India\'s #1 Food Delivery \n        and Dining App ',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider(thickness: 2, color: Colors.grey)),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                      child: Text(
                    'Log in or sign up',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                    color: Colors.grey,
                  )),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        // Text Field
        Container(
          height: 50,
          child: Row(
            children: [
              GestureDetector(
                onTap: () async {
                  final code = await countryPicker.showPicker(context: context);
                  countryCode = code;
                  setState(() {});
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 70,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: countryCode != null
                      ? Center(child: countryCode!.flagImage())
                      : null,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Enter Phone Number',
                      prefix: Text(
                        countryCode?.dialCode ?? '+91',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => OtpScreen(),
          )),
          child: Container(
            margin: EdgeInsets.all(10),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 203, 32, 45),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider(thickness: 2, color: Colors.grey)),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                      child: Text(
                    'or',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                    color: Colors.grey,
                  )),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.grey),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(ImageConstants.google_logo),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () => showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                context: context,
                builder: (context) => BottomSheetLoginPage(),
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                    child: Icon(
                  Icons.more_horiz,
                  size: 30,
                )),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Center(
          child: Text(
            'By continuing, you agree to our',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Column(
                children: [
                  Text('Terms of Service',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              child: Text('Privacy Policy',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              child: Text('Content Policy',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ]),
    );
  }
}
