import 'package:flutter/material.dart';
import 'package:zomato/utils/color_constant/color_constant.dart';
import 'package:zomato/utils/databases/database.dart';
import 'package:zomato/utils/textstyle_constants/textstyle_constants.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  String? language;
  int? _value = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.6,
      width: double.infinity,
      color: Colors.transparent,
      child: Column(children: [
        SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(214, 0, 0, 0),
            child: Center(
              child: Icon(
                Icons.close,
                color: ColorConstant.backgroundColor,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: height * 0.5,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorConstant.backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          child: Column(children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Select Language',
                    style: TextStyleConstants.heading3,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Database.languages.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 90,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: index == _value
                              ? ColorConstant.containerBg
                              : const Color.fromARGB(255, 204, 204, 204),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _value = index;
                            });
                          },
                          child: ListTile(
                            title: Text(
                              Database.languages[index],
                              style: TextStyleConstants.heading2,
                            ),
                            leading: Radio(
                              value: index,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              },
                              activeColor: ColorConstant.bannerColor,
                            ),
                          ),
                        ),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstant.bannerColor,
                    borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('Select',style: TextStyle(fontSize: 18,color: ColorConstant.backgroundColor),)),
              ),
            )
          ]),
        )
      ]),
    );
  }
}
