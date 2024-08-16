import 'package:ecommerce/utils/Reused-row.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/app_images_constant.dart';
import 'package:ecommerce/utils/constant/app_textstyle_constant.dart';
import 'package:ecommerce/view/setting-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 32.0.h),
                child: Center(
                  child: CircleAvatar(
                    radius: 80.r,
                    backgroundImage: const AssetImage(
                      AppImages.profilepicture,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0.h),
              Center(
                child: Text(
                  'Mark Adam',
                  style: pStyleBlack16600,
                ),
              ),
              SizedBox(height: 3.0.h),
              Center(
                child: Text(
                  'Sunny_Koelpin45@hotmail.com',
                  style: pStyleBlack12600.copyWith(color: AppColors.greyColor3),
                ),
              ),
              SizedBox(
                height: 24.0.h,
              ),
              ReusedRow(
                text: 'Profile',
                image: AppImages.profile,
                ontap: () {},
              ),
              SizedBox(
                height: 15.0.h,
              ),
              ReusedRow(
                text: 'Setting',
                image: AppImages.setting,
                ontap: () {
                  Get.to(const SettingScreen());
                },
              ),
              SizedBox(
                height: 15.0.h,
              ),
              ReusedRow(
                text: 'Contact',
                image: AppImages.message,
                ontap: () {},
              ),
              SizedBox(
                height: 15.0.h,
              ),
              ReusedRow(
                ontap: () {},
                text: 'Share App',
                image: AppImages.share,
              ),
              SizedBox(
                height: 15.0.h,
              ),
              ReusedRow(
                ontap: () {},
                text: 'Help',
                image: AppImages.help,
              ),
              SizedBox(
                height: 100.0.h,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Out',
                    style: pStyleBlack16600.copyWith(
                      color: AppColors.orange,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
