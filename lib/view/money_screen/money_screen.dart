import 'package:flutter/material.dart';
import 'package:zomato/utils/image_constants/image_constants.dart';

import '../../utils/color_constant/color_constant.dart';
import '../../utils/icon-constants/icon-constants.dart';
import '../../utils/textstyle_constants/textstyle_constants.dart';
import '../account/account.dart';
import '../location/location.dart';

class MoneyScreen extends StatelessWidget {
  const MoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.containerBg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.moneyBg,
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
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorConstant.moneyBg,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Center(
              child: Text(
            'MONEY',
            style: TextStyle(
                fontSize: 30,
                color: ColorConstant.backgroundColor,
                fontWeight: FontWeight.w700,
                letterSpacing: 10),
          )),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            'GIFT CARDS',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                color: ColorConstant.backgroundColor,
                borderRadius: BorderRadius.circular(20)),
            height: 260,
            width: double.infinity,
            child: Column(children: [
              Container(
                height: 200,
                margin: EdgeInsets.all(5),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(ImageConstants.giftCardImage),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Buy Now',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: ColorConstant.bannerColor),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 16,
                    color: ColorConstant.bannerColor,
                  )
                ],
              )
            ]),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstant.backgroundColor,
                  borderRadius: BorderRadius.circular(20)),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  decoration:
                      BoxDecoration(color: ColorConstant.backgroundColor),
                  width: double.infinity,
                  child: ListTile(
                    title: Text(
                      'Claim a Gift Card',
                      style: TextStyleConstants.optionText,
                    ),
                    trailing: IconConstants.forwardArrowIcon,
                    iconColor: ColorConstant.primaryTextColor,
                  ),
                ),
                separatorBuilder: (context, index) => Divider(
                  thickness: 1,
                  color: ColorConstant.secondaaryGrey,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        )
      ]),
    );
  }
}
