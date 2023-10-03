import 'package:flutter/material.dart';
import 'package:zomato/view/loginpage/loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage(),)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      Container(
        height: 200,
        width: 200,
        child: Image.network('https://seeklogo.com/images/Z/zomato-logo-ECC4441DB7-seeklogo.com.png'),
      )),
    );
  }
}