import 'package:flutter/material.dart';
import 'package:zomato/utils/databases/database.dart';

import '../../../utils/color_constant/color_constant.dart';

class MustTries extends StatelessWidget {
  const MustTries({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Database.mustTries.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: width * 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Database.mustTries[index]['image']),
                    opacity: 1,
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      width: width * 0.4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Database.mustTries[index]['text'],
                          style:
                              TextStyle(color: ColorConstant.backgroundColor,fontSize: 18,fontWeight: FontWeight.w600),
                        ),
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
