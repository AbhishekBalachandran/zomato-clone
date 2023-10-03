import 'package:flutter/material.dart';

import '../../../utils/color_constant/color_constant.dart';
import '../../../utils/databases/database.dart';

class WhatLookingFor extends StatelessWidget {
  const WhatLookingFor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        children: [
          ...List.generate(
              Database.whatLookingFor.length,
              (index) => Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            Database.whatLookingFor[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: Text(
                        Database.whatLookingFor[index]['text'],
                        style: TextStyle(
                            color: ColorConstant.primaryTextColor,
                            fontWeight: FontWeight.w500),
                      )),
                    ],
                  ))
        ],
      ),
    );
  }
}
