import 'package:flutter/material.dart';
import 'package:zomato/utils/image_constants/image_constants.dart';
import 'package:zomato/view/dining-screen/must-tries/must-tries.dart';
import 'package:zomato/view/dining-screen/tab-section/tab-section.dart';
import 'package:zomato/view/dining-screen/what-looking-for/what-looking-for.dart';

import '../../utils/color_constant/color_constant.dart';
import '../account/account.dart';
import '../location/location.dart';

class DiningScreen extends StatelessWidget {
  const DiningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.primaryTextColor,
        leading: Icon(
          Icons.location_on_rounded,
          color: ColorConstant.backgroundColor,
          size: 35,
        ),
        leadingWidth: 25,
        title: InkWell(
          onTap: () {
            showModalBottomSheet(
                backgroundColor: ColorConstant.containerBg,
                isScrollControlled: true,
                context: context,
                builder: (context) => Location());
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Home',
                    style: TextStyle(
                        color: ColorConstant.backgroundColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: ColorConstant.backgroundColor,
                  ),
                ],
              ),
              Text(
                'Edapally,Ernakulam',
                style: TextStyle(
                    color: ColorConstant.backgroundColor, fontSize: 13),
              )
            ],
          ),
        ),
        actions: [
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Account(),
                )),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: ColorConstant.secondaaryGrey,
              child: Icon(
                Icons.person_outline_outlined,
                color: ColorConstant.primaryTextColor,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(children: [
        Container(
          color: ColorConstant.primaryTextColor,
          child: Column(
            children: [
              // Search
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 40, 39, 39),

                      // border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(children: [
                    Flexible(
                        child: TextField(
                      cursorColor: ColorConstant.bannerColor,
                      decoration: InputDecoration(
                          hintText: 'Search "salad"',
                          hintStyle:
                              TextStyle(color: ColorConstant.backgroundColor),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: ColorConstant.bannerColor,
                          )),
                    )),
                  ]),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),

        // Scrolling tab section
        DiningTabSection(),

        // Ad section
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(ImageConstants.diningAdImage),
                  fit: BoxFit.cover),
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
                  Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                      child: Text(
                    'MUST-TRIES IN KOCHI',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: ColorConstant.primaryGrey),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  )),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        MustTries(),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            height: 30,
            width: width * 0.3,
            decoration: BoxDecoration(
                color: ColorConstant.containerBg,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Explore more',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: ColorConstant.bannerColor),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 15,
                  color: ColorConstant.bannerColor,
                )
              ],
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
                  Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                      child: Text(
                    'WHAT ARE YOU LOOKING FOR?',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: ColorConstant.primaryGrey),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 1,
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
        WhatLookingFor(),
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
                  Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                      child: Text(
                    'POPULAR RESTAURANTS AROUND YOU',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: ColorConstant.primaryGrey),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 1,
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
      ]),
    );
  }
}
