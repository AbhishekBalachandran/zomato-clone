import 'package:flutter/material.dart';
import 'package:zomato/utils/color_constant/color_constant.dart';
import 'package:zomato/utils/databases/database.dart';
import 'package:zomato/utils/icon-constants/icon-constants.dart';
import 'package:zomato/utils/textstyle_constants/textstyle_constants.dart';

import '../account-section-tile/account-section-tile.dart';

class More extends StatelessWidget {
  const More({super.key});

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
                      'More',
                      style: TextStyleConstants.heading3,
                    ),
                  ),
                ],
              ),
              AccountSectionTile(
                  title: Database.more[0]['title'],
                  icon: Database.more[0]['icon']),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.2,
                  ),
                  Expanded(
                      child: Container(
                    width: width * 0.5,
                    height: 1,
                    color: ColorConstant.secondaaryGrey,
                  )),
                ],
              ),
              AccountSectionTile(
                  title: Database.more[1]['title'],
                  icon: Database.more[1]['icon']),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.2,
                  ),
                  Expanded(
                      child: Container(
                    width: width * 0.5,
                    height: 1,
                    color: ColorConstant.secondaaryGrey,
                  )),
                ],
              ),
              AccountSectionTile(
                  title: Database.more[2]['title'],
                  icon: Database.more[2]['icon']),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.2,
                  ),
                  Expanded(
                      child: Container(
                    width: width * 0.5,
                    height: 1,
                    color: ColorConstant.secondaaryGrey,
                  )),
                ],
              ),
              AccountSectionTile(
                  title: Database.more[3]['title'],
                  icon: Database.more[3]['icon']),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.2,
                  ),
                  Expanded(
                      child: Container(
                    width: width * 0.5,
                    height: 1,
                    color: ColorConstant.secondaaryGrey,
                  )),
                ],
              ),
              AccountSectionTile(
                  title: Database.more[4]['title'],
                  icon: Database.more[4]['icon']),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.2,
                  ),
                  Expanded(
                      child: Container(
                    width: width * 0.5,
                    height: 1,
                    color: ColorConstant.secondaaryGrey,
                  )),
                ],
              ),
              AccountSectionTile(
                  title: Database.more[5]['title'],
                  icon: Database.more[5]['icon']),
            ]),
      ),
    );
  }
}
