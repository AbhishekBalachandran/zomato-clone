import 'package:flutter/material.dart';
import 'package:zomato/utils/color_constant/color_constant.dart';
import 'package:zomato/utils/databases/database.dart';
import 'package:zomato/utils/textstyle_constants/textstyle_constants.dart';

import '../account-section-tile/account-section-tile.dart';

class CollectedCoupons extends StatelessWidget {
  const CollectedCoupons({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: ColorConstant.backgroundColor,
            borderRadius: BorderRadius.circular(15)),
        child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 30,
                      width: 5,
                      decoration: BoxDecoration(
                          color: ColorConstant.bannerColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Coupons',
                      style: TextStyleConstants.heading3,
                    ),
                  ),
                ],
              ),
              AccountSectionTile(
                  title: Database.CollectedCoupons[0]['title'],
                  icon: Database.CollectedCoupons[0]['icon']),
            ]),
      ),
    );
  }
}
