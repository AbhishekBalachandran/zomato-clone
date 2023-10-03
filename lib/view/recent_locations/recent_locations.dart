import 'package:flutter/material.dart';

import '../../utils/color_constant/color_constant.dart';
import '../../utils/databases/database.dart';

class RecentLocations extends StatelessWidget {
  const RecentLocations({super.key});

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
                  height: 100,
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
                            Database.recent_locations[index]['icon'],
                            color: ColorConstant.primaryGrey,
                            size: 25,
                          ),
                          
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
                          Database.recent_locations[index]['title'],
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                            width: width * 0.6,
                            child: Text(
                              Database.recent_locations[index]['address'],
                              style:
                                  TextStyle(color: ColorConstant.primaryGrey),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        
                      ],
                    )
                  ]),
                ),
              ),
          itemCount: Database.recent_locations.length),
    );
  }
}
