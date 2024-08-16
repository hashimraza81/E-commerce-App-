import 'package:ecommerce/utils/Reused-row.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/app_images_constant.dart';
import 'package:ecommerce/utils/constant/app_textstyle_constant.dart';
import 'package:ecommerce/view/profile-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Get.to(const ProfileScreen());
            },
            child: const CircleAvatar(
              backgroundColor: Color(0xFFF8F7F7),
              child: Icon(
                Icons.arrow_back,
              ),
            ),
          ),
          title: Text(
            'Settings',
            style: pStyleBlack16600,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Account',
                style: pStyleBlack14600,
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 35.0.r,
                            backgroundImage:
                                const AssetImage(AppImages.profilepicture),
                          ),
                          SizedBox(
                            width: 10.0.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mark Adam',
                                style: pStyleBlack16600,
                              ),
                              Text(
                                'Sunny_Koelpin45@hotmail.com',
                                style: pStyleBlack12600.copyWith(
                                    color: AppColors.greyColor3),
                              ),
                            ],
                          )
                        ],
                      ),
                      SvgPicture.asset(AppImages.arrow)
                    ],
                  ),
                ),
              ),
              const Divider(),
              Text(
                'Setting',
                style: pStyleBlack14600,
              ),
              SizedBox(
                height: 10.0.h,
              ),
              ReusedRow(
                text: 'Notification',
                image: AppImages.notification,
                ontap: () {},
              ),
              SizedBox(
                height: 10.0.h,
              ),
              ReusedRow(
                text: 'Language',
                image: AppImages.language,
                text2: 'English',
                ontap: () {},
              ),
              SizedBox(
                height: 10.0.h,
              ),
              ReusedRow(
                text: 'Privacy',
                image: AppImages.privacy,
                ontap: () {},
              ),
              SizedBox(
                height: 10.0.h,
              ),
              ReusedRow(
                text: 'Help Center',
                image: AppImages.center,
                ontap: () {},
              ),
              SizedBox(
                height: 10.0.h,
              ),
              ReusedRow(
                text: 'About Us',
                image: AppImages.about,
                ontap: () {},
              ),
              SizedBox(
                height: 10.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
