import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/view/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/constant/app_images_constant.dart';
import '../utils/constant/app_textstyle_constant.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
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
                    SizedBox(width: 15.w),
                    Center(
                      child: Text(
                        'Products',
                        style: pStyleBlack16600,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildProductPlusCard(
                      image: AppImages.watch,
                      title: 'Watch',
                      price: '\$40',
                    ),
                    buildProductPlusCard(
                      image: AppImages.Jacket,
                      title: 'Jacket',
                      price: '\$430',
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildProductPlusCard(
                      image: AppImages.Hoodie,
                      title: 'Hoodie',
                      price: '\$333',
                    ),
                    buildProductPlusCard(
                      image: AppImages.TV,
                      title: 'LG TV',
                      price: '\$330',
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(const DetailScreen());
                      },
                      child: buildProductPlusCard(
                        image: AppImages.shoes,
                        title: 'Nike Shoes',
                        price: '\$50',
                      ),
                    ),
                    buildProductPlusCard(
                      image: AppImages.airpods,
                      title: 'Airpods',
                      price: '\$70',
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildProductPlusCard(
                      image: AppImages.watch,
                      title: 'Watch',
                      price: '\$40',
                    ),
                    buildProductPlusCard(
                      image: AppImages.watch,
                      title: 'Watch',
                      price: '\$40',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProductPlusCard({
    required String image,
    required String title,
    required String price,
  }) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 134.h,
              width: 155.w,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                ),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              right: 8.w,
              top: 8.h,
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 24.r,
              ),
            ),
          ],
        ),
        Container(
          height: 44.h,
          width: 155.w,
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.r),
              bottomRight: Radius.circular(15.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: pStyleBlack14600,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: pStyleBlack14600.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: CircleAvatar(
                        radius: 10.r,
                        backgroundColor: AppColors.primaryColor,
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: AppColors.whiteColor,
                            size: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
