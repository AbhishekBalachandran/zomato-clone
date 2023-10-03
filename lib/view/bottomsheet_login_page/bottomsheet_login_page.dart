import 'package:flutter/material.dart';
import 'package:zomato/utils/image_constants/image_constants.dart';

class BottomSheetLoginPage extends StatelessWidget {
  const BottomSheetLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 160,
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Container(
          width: width * 0.9,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30,
                height: 30,
                color: Colors.white,
                child: Image.asset(ImageConstants.fb_logo),
              ),
              SizedBox(width: 10,),
              Text('Continue with Facebook',style: TextStyle(fontWeight: FontWeight.w600),),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: width * 0.9,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(
                width: 40,
                height: 40,
                color: Colors.white,
                child: Icon(Icons.mail)
              ),
              SizedBox(width: 10,),
              Text('Continue with Email',style: TextStyle(fontWeight: FontWeight.w600),),
            ],
          ),
        )
      ]),
    );
  }
}
