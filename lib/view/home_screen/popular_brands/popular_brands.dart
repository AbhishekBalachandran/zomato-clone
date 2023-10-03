import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:zomato/utils/image_constants/image_constants.dart';
import '../../../utils/color_constant/color_constant.dart';
import '../../../utils/databases/database.dart';

class PopularBrands extends StatelessWidget {
  const PopularBrands({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(color: ColorConstant.containerBg),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            'POPULAR BRANDS',
            style: TextStyle(
                color: ColorConstant.primaryGrey,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.5),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 320,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Database.popularBrands.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 0.5)]),
                child: Column(children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      image: DecorationImage(
                          image: AssetImage(Database.popularBrands[index]['image']),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: SizedBox(
                          width: width * 0.3,
                          child: Text(
                            Database.popularBrands[index]['restaurantName'],
                            style: TextStyle(
                                color: ColorConstant.primaryTextColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 30, 88, 33),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                 Database.popularBrands[index]['rating'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: ColorConstant.backgroundColor),
                              ),
                              Icon(
                                Icons.star,
                                size: 13,
                                color: ColorConstant.backgroundColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.timer_outlined,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${Database.popularBrands[index]['arrivalTime']} • ${Database.popularBrands[index]['distance']}',
                        style: TextStyle(
                            color: ColorConstant.primaryGrey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(ImageConstants.rupeeIcon))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${Database.popularBrands[index]['price']} for one',
                        style: TextStyle(
                            color: ColorConstant.primaryGrey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: DottedDashedLine(
                        dashColor: ColorConstant.primaryGrey,
                        height: 0,
                        width: width * 0.9,
                        axis: Axis.horizontal),
                  ),
                  SizedBox(
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/sale.png'))),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              Database.popularBrands[index]['offer'],
                              style: TextStyle(
                                  fontSize: 13,
                                  color: ColorConstant.zomatoBlue,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
