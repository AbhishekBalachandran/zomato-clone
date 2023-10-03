import 'package:flutter/material.dart';
import 'package:zomato/utils/color_constant/color_constant.dart';
import 'package:zomato/utils/icon-constants/icon-constants.dart';
import 'package:zomato/utils/image_constants/image_constants.dart';
import 'package:zomato/utils/textstyle_constants/textstyle_constants.dart';
import 'package:zomato/view/saved_address/saved_address.dart';

import '../nearby_locations/nearby_locations.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(color: ColorConstant.containerBg),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          InkWell( 
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  Icons.expand_more,
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Select a location',
                  style: TextStyle(
                      color: ColorConstant.primaryTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // Search field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.5,
                            blurRadius: 1,
                          )
                        ],
                        // border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      Flexible(
                          child: TextField(
                        cursorColor: ColorConstant.bannerColor,
                        decoration: InputDecoration(
                            hintText: 'Search for area, street name...',
                            hintStyle:
                                TextStyle(color: ColorConstant.primaryGrey),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: ColorConstant.bannerColor,
                            )),
                      )),
                    ]),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ColorConstant.backgroundColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8, bottom: 4),
                                      child: Icon(
                                        Icons.my_location_sharp,
                                        color: ColorConstant.bannerColor,
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        'Use current location',
                                        style: TextStyle(
                                            color: ColorConstant.bannerColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    SizedBox(
                                      width: width * 0.6,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(
                                          'Thodupuzha - Moolamattom Rd, Saramkuthy, India',
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconConstants.forwardArrowIcon
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: width * 0.9,
                        color: ColorConstant.secondaaryGrey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.add,
                                    color: ColorConstant.bannerColor,
                                    size: 28,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Add Address',
                                    style: TextStyle(
                                      color: ColorConstant.bannerColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconConstants.forwardArrowIcon
                          )
                        ],
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Saved addresses
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Saved addresses',
                        style: TextStyleConstants.heading2,
                      ),
                    ),
                  ],
                ),
                SavedAddress(),

                 // Nearby locations
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Nearby locations',
                        style: TextStyleConstants.heading2,
                      ),
                    ),
                  ],
                ),
                NearbyLocations(),

                 // Recent locations
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Recent locations',
                        style: TextStyleConstants.heading2,
                      ),
                    ),
                  ],
                ),
                NearbyLocations(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'powered by',
                      style: TextStyle(color: ColorConstant.primaryGrey),
                    ),
                    Center(
                      child: Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstants.googleIcon),
                            fit: BoxFit.contain
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
