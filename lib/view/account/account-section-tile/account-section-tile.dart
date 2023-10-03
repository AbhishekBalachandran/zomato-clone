import 'package:flutter/material.dart';

import '../../../utils/color_constant/color_constant.dart';
import '../../../utils/icon-constants/icon-constants.dart';
import '../../../utils/textstyle_constants/textstyle_constants.dart';

class AccountSectionTile extends StatelessWidget {
  const AccountSectionTile(
      {super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 18,
        backgroundColor: ColorConstant.iconBgColor,
        child: Icon(
          icon,
          color: ColorConstant.primaryGrey,
        ),
      ),
      title: Text(
        title,
        style: TextStyleConstants.optionText,
      ),
      trailing: IconConstants.forwardArrowIcon,
    );
  }
}
