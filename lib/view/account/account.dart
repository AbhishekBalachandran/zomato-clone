import 'package:flutter/material.dart';
import 'package:zomato/utils/color_constant/color_constant.dart';
import 'package:zomato/utils/icon-constants/icon-constants.dart';
import 'package:zomato/utils/textstyle_constants/textstyle_constants.dart';
import 'package:zomato/view/account/collected_coupons/collected_coupons.dart';
import 'package:zomato/view/account/food_order_section/food-order-section.dart';
import 'package:zomato/view/account/money/money.dart';
import 'package:zomato/view/account/more/more.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorConstant.containerBg,
      appBar: AppBar(
        backgroundColor: ColorConstant.containerBg,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: ColorConstant.primaryTextColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 0.5,
                      color: ColorConstant.primaryGrey)
                ],
                color: ColorConstant.backgroundColor,
                borderRadius: BorderRadius.circular(15)),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 35,
                  child: Center(
                    child: Text(
                      'U',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'User',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'user@gmail.com',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'View activity',
                        style: TextStyle(
                            color: ColorConstant.bannerColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 18,
                        color: ColorConstant.bannerColor,
                      )
                    ],
                  )
                ],
              )
            ]),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                        height: 80,
                        width: width * 0.3,
                        decoration: BoxDecoration(
                            color: ColorConstant.backgroundColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite_outline_outlined),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Likes',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                        height: 80,
                        width: width * 0.3,
                        decoration: BoxDecoration(
                            color: ColorConstant.backgroundColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.credit_card_outlined),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Payments',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                        height: 80,
                        width: width * 0.3,
                        decoration: BoxDecoration(
                            color: ColorConstant.backgroundColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.settings),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ColorConstant.backgroundColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 16,
                        backgroundColor: ColorConstant.iconBgColor,
                        child: Icon(
                          Icons.person_outline_outlined,
                          color: ColorConstant.primaryGrey,
                        ),
                      ),
                      title: Text(
                        'Your Profile',
                        style: TextStyleConstants.optionText,
                      ),
                      trailing: SizedBox(
                        width: width * 0.38,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 25,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color.fromARGB(70, 255, 193, 7)),
                                child: Center(
                                    child: Text(
                                  '48% completed',
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                              IconConstants.forwardArrowIcon,
                            ]),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ColorConstant.backgroundColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 16,
                        backgroundColor: ColorConstant.iconBgColor,
                        child: Icon(
                          Icons.star_border_outlined,
                          color: ColorConstant.primaryGrey,
                        ),
                      ),
                      title: Text(
                        'Your rating',
                        style: TextStyleConstants.optionText,
                      ),
                      trailing: SizedBox(
                        width: width * 0.26,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 25,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: ColorConstant.iconBgColor),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '--',
                                      style: TextStyle(
                                          color: ColorConstant.primaryGrey,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                    )
                                  ],
                                ),
                              ),
                              IconConstants.forwardArrowIcon,
                            ]),
                      ),
                    )),
              ),
              FoodOrderSection(),
              CollectedCoupons(),
              Money(),
              More(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
