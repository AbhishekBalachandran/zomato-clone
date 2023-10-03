import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zomato/utils/color_constant/color_constant.dart';
import 'package:zomato/utils/databases/database.dart';
import 'package:zomato/utils/image_constants/image_constants.dart';
import 'package:zomato/view/home_screen/popular_brands/popular_brands.dart';
import 'package:zomato/view/location/location.dart';

import '../account/account.dart';
import '../select_language/select_language.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> tabName = [
      "sort",
      "Nearest",
      "Great Offers",
      "Rating 4.0+",
      "Cuisines",
      "Previously Ordered",
    ];
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.backgroundColor,
        leading: Icon(
          Icons.location_on_rounded,
          color: ColorConstant.bannerColor,
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
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: ColorConstant.primaryTextColor,
                  ),
                ],
              ),
              Text(
                'Edapally,Ernakulam',
                style: TextStyle(
                    color: ColorConstant.primaryTextColor, fontSize: 13),
              )
            ],
          ),
        ),
        actions: [
          Center(
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: ColorConstant.containerBg,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => SelectLanguage());
              },
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.g_translate_outlined,
                  size: 20,
                  color: ColorConstant.primaryTextColor,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
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
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),

          // Search
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
                      hintText: 'Search "salad"',
                      hintStyle: TextStyle(color: ColorConstant.primaryGrey),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: ColorConstant.bannerColor,
                      )),
                )),
                Container(
                  height: 30,
                  width: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.keyboard_voice_outlined,
                  color: ColorConstant.bannerColor,
                ),
                SizedBox(
                  width: 10,
                ),
              ]),
            ),
          ),
          // Advertisement section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstants.homeAdImage),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          // Explore section
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
                      'EXPLORE',
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

          Row(
            children: [
              // offers
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  width: width * 0.47,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 0.5,
                      )
                    ],
                    color: ColorConstant.backgroundColor,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Offers',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text('Flat Discounts',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: ColorConstant.zomatoBlue,
                                      fontWeight: FontWeight.w500)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                  height: 20,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: ColorConstant.zomatoBlue),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: ColorConstant.backgroundColor,
                                      size: 15,
                                    ),
                                  )),
                            )
                          ],
                        ),
                        Container(
                          height: 100,
                          width: 60,
                          child: Lottie.asset(
                              'assets/animations/animation_ln1hva8o.json'),
                        ),
                      ]),
                ),
              ),

              // gourmet
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  width: width * 0.47,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 0.5,
                      )
                    ],
                    color: ColorConstant.backgroundColor,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Gourmet',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text('Selections',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: ColorConstant.bannerColor,
                                      fontWeight: FontWeight.w500)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                  height: 20,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: ColorConstant.bannerColor),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: ColorConstant.backgroundColor,
                                      size: 15,
                                    ),
                                  )),
                            )
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage(ImageConstants.noodlesAnimation),
                                fit: BoxFit.fill),
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),

          // Whats on your mind
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
                      'WHAT\'S ON YOUR MIND?',
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
          Container(
            height: 200,
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 2,
              children: [
                ...List.generate(
                    Database.whatsOnMind.length,
                    (index) => Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 60,
                              child: Image.asset(
                                Database.whatsOnMind[index]['image'],
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                                child: Text(
                              Database.whatsOnMind[index]['text'],
                              style: TextStyle(
                                  color: ColorConstant.primaryTextColor,
                                  fontWeight: FontWeight.w400),
                            )),
                          ],
                        ))
              ],
            ),
          ),
          // All Restaurants
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
                      'ALL RESTAURANTS',
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
          Container(
            height: 30,
            child: ListView.builder(
                itemCount: tabName.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => index == 0
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 1,
                                      spreadRadius: 0.5)
                                ],
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.tune,
                                  size: 15,
                                ),
                                Center(
                                  child: Text(
                                    'sort',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          ),
                        ),
                      )
                    : index == 4
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 1,
                                          spreadRadius: 0.5)
                                    ],
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Center(
                                      child: Text(
                                        'Cuisines',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    Icon(Icons.arrow_drop_down)
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 1,
                                          spreadRadius: 0.5)
                                    ],
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Center(child: Text(tabName[index])),
                                    SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              '308 restaurants delivering to you',
              style: TextStyle(color: ColorConstant.primaryGrey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'FEATURED',
              style: TextStyle(color: ColorConstant.primaryGrey),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Database.homeListItems.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => index == 3
                  ? PopularBrands()
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 420,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 1, spreadRadius: 0.5)
                            ]),
                        width: double.infinity,
                        child: Column(children: [
                          CarouselSlider.builder(
                            options: CarouselOptions(
                                autoPlay: true,
                                autoPlayAnimationDuration: Duration(seconds: 1),
                                viewportFraction: 1,
                                enlargeCenterPage: false,
                                height: 260.0),
                            itemCount:
                                Database.homeListItems[index]['images'].length,
                            itemBuilder: (context, carousalIndex, realIndex) =>
                                Container(
                              height: 250,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        Database.homeListItems[index]['images']
                                            [carousalIndex]['image']),
                                    fit: BoxFit.fill),
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .primaryTextColor,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 4),
                                              child: Text(
                                                Database.homeListItems[index]
                                                            ['images']
                                                        [carousalIndex]
                                                    ['itemName&price'],
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .backgroundColor),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.favorite_outline_outlined,
                                              color:
                                                  ColorConstant.backgroundColor,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(
                                              Icons.more_vert,
                                              color:
                                                  ColorConstant.backgroundColor,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: SizedBox(
                                  width: width * 0.6,
                                  child: Text(
                                    Database.homeListItems[index]
                                        ['restaurantName'],
                                    style: TextStyle(
                                        color: ColorConstant.primaryTextColor,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
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
                                        Database.homeListItems[index]['rating'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            color:
                                                ColorConstant.backgroundColor),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                Database.homeListItems[index]['description'],
                                style: TextStyle(
                                    color: ColorConstant.primaryGrey,
                                    fontWeight: FontWeight.w500),
                              )
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
                              Icon(Icons.timer_outlined),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${Database.homeListItems[index]['arrivalTime']} ● ${Database.homeListItems[index]['distance']}",
                                style:
                                    TextStyle(color: ColorConstant.primaryGrey),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DottedDashedLine(
                              dashColor: ColorConstant.primaryGrey,
                              height: 0,
                              width: width * 0.9,
                              axis: Axis.horizontal),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/sale.png'))),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      Database.homeListItems[index]['offer'],
                                      style: TextStyle(
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
          SizedBox(
            height: 30,
          ),

          SizedBox(
            height: 30,
          ),
        ],
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     elevation: 0,
    //     backgroundColor: ColorConstant.backgroundColor,
    //     leading: Icon(
    //       Icons.location_on,
    //       color: Color.fromARGB(255, 240, 79, 96),
    //       size: 30,
    //     ),
    //     title: Row(
    //       children: [
    //         Text(
    //           'Home',
    //           style:
    //               TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
    //         ),
    //         Icon(
    //           Icons.expand_more,
    //           color: Colors.black,
    //         )
    //       ],
    //     ),
    //     actions: [
    //       Center(
    //         child: Container(
    //           height: 30,
    //           width: 30,
    //           decoration: BoxDecoration(
    //               border: Border.all(color: Colors.grey),
    //               borderRadius: BorderRadius.circular(10)),
    //           child: CircleAvatar(
    //             backgroundColor: Colors.white,
    //             child: Icon(
    //               Icons.g_translate,
    //               color: Colors.black,
    //             ),
    //           ),
    //         ),
    //       ),
    //       SizedBox(
    //         width: 10,
    //       ),
    //       CircleAvatar(
    //         radius: 20,
    //         backgroundColor: Color.fromARGB(255, 220, 232, 255),
    //         child: Text(
    //           'A',
    //           style: TextStyle(color: Color.fromARGB(255, 40, 110, 230)),
    //         ),
    //       ),
    //       SizedBox(
    //         width: 10,
    //       ),
    //     ],
    //   ),
    //   body: Column(children: [
    //     // Search
    //     Container(
    //       height: 50,
    //       width: double.infinity,
    //       margin: EdgeInsets.all(10),
    //       decoration: BoxDecoration(
    //           color: Colors.white,
    //           boxShadow: [
    //             BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 5)
    //           ],
    //           border: Border.all(color: Color.fromARGB(255, 127, 132, 144)),
    //           borderRadius: BorderRadius.circular(15)),
    //       child:
    //           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    //         Row(
    //           children: [
    //             SizedBox(
    //               width: 10,
    //             ),
    //             Icon(Icons.search, color: Color.fromARGB(255, 240, 79, 96)),
    //             SizedBox(
    //               width: 10,
    //             ),
    //             Text(
    //               'Search "cutlet"',
    //               style: TextStyle(
    //                   color: const Color.fromARGB(255, 127, 132, 144),
    //                   fontSize: 20),
    //             )
    //           ],
    //         ),
    //         Row(
    //           children: [
    //             Container(
    //               width: 1,
    //               height: 40,
    //               color: Color.fromARGB(255, 127, 132, 144),
    //             ),
    //             SizedBox(
    //               width: 10,
    //             ),
    //             Icon(
    //               Icons.mic_none_outlined,
    //               color: Color.fromARGB(255, 240, 79, 96),
    //             ),
    //             SizedBox(
    //               width: 10,
    //             )
    //           ],
    //         )
    //       ]),
    //     ),
    //     Container(
    //       height: 200,
    //       width: width * 0.9,
    //       decoration: BoxDecoration(
    //         color: ColorConstant.primaryTextColor,
    //         borderRadius: BorderRadius.circular(20)
    //       ),
    //     ),

    //     SizedBox(height: 20,),

    //

    //     Container(
    //       height: 100,
    //       width: width * 0.9,
    //       child: Row(),
    //     )
    //   ]),
    // );
  }
}
