import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constant/app_colors.dart';
import '../utils/constant/app_textstyle_constant.dart';


Widget buildHeader(BuildContext context, {required String title}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CircleAvatar(
        radius: 20.r,
        backgroundColor: AppColors.secondaryColor,
        child: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 20.sp,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      Text(
        title,
        style: pStyleBlack16600,
      ),
      CircleAvatar(
        radius: 20.r,
        backgroundColor: AppColors.secondaryColor,
        child: IconButton(
          icon: Icon(
            Icons.more_vert,
            size: 20.sp,
          ),
          onPressed: () {
            // Additional logic
          },
        ),
      ),
    ],
  );
}