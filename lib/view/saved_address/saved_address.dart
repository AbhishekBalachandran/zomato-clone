import 'package:flutter/material.dart';

import '../../utils/color_constant/color_constant.dart';
import '../../utils/databases/database.dart';

class SavedAddress extends StatelessWidget {
  const SavedAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstant.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Database.savedAddresses[index]['icon'],
                            color: ColorConstant.primaryGrey,
                            size: 25,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                           Database.savedAddresses[index]['distance'],
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          Database.savedAddresses[index]['typeOfAddress'],
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                            width: width * 0.6,
                            child: Text(
                              Database.savedAddresses[index]['address'],
                              style: TextStyle(color: ColorConstant.primaryGrey),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorConstant.primaryTextColor),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Icon(
                                  Icons.more_horiz,
                                  color: ColorConstant.bannerColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorConstant.primaryTextColor),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Icon(
                                  Icons.send,
                                  color: ColorConstant.bannerColor,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ]),
                ),
              ),
          itemCount: Database.savedAddresses.length),
    );
  }
}
