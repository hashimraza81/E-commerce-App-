import 'package:ecommerce/view/order_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/constant/app_colors.dart';
import '../utils/constant/app_images_constant.dart';
import '../utils/constant/app_textstyle_constant.dart';
import 'cart-screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(width: 100.w),
                    Center(
                      child: Text(
                        'Check Out',
                        style: pStyleBlack16600,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundColor: AppColors.secondaryColor,
                      child: Icon(
                        size: 30.sp,
                        Icons.location_on_sharp,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '325 15th Eighth Avenue, NewYork',
                          style: pStyleBlack14400,
                        ),
                        Text('Saepe eaque fugiat ea voluptatum veniam.',
                            style: pStyleBlack12400.copyWith(
                                color: AppColors.greyColor3)),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundColor: AppColors.secondaryColor,
                      child: Icon(
                        size: 30.sp,
                        Icons.watch_later,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '6:00 pm, Wednesday 20',
                      style: pStyleBlack14400,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                buildTotalPrice(),
                SizedBox(height: 20.h),
                Text(
                  'Choose payment method',
                  style: pStyleBlack16600,
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      SvgPicture.asset(
                        AppImages.creditCard,
                        height: 30.h,
                        width: 30.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Credit Card',
                        style: pStyleBlack14400,
                      ),
                    ]),
                    CircleAvatar(
                      backgroundColor: AppColors.secondaryColor,
                      child: Icon(
                        Icons.check,
                        size: 15.sp,
                      ),
                      radius: 15.r,
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      SvgPicture.asset(
                        AppImages.paypal,
                        height: 30.h,
                        width: 30.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Paypal',
                        style: pStyleBlack14400,
                      ),
                    ]),
                    CircleAvatar(
                      backgroundColor: AppColors.secondaryColor,
                      child: Icon(
                        Icons.check,
                        size: 15.sp,
                      ),
                      radius: 15.r,
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      SvgPicture.asset(
                        AppImages.cash,
                        height: 30.h,
                        width: 30.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Cash',
                        style: pStyleBlack14400,
                      ),
                    ]),
                    CircleAvatar(
                      backgroundColor: AppColors.secondaryColor,
                      child: Icon(
                        Icons.check,
                        size: 15.sp,
                      ),
                      radius: 15.r,
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add new payment method',
                      style: pStyleBlack16600,
                    ),
                    CircleAvatar(
                      backgroundColor: AppColors.secondaryColor,
                      child: Icon(
                        Icons.add,
                        color: AppColors.primaryColor,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const OrderHistory());
                  },
                  child: buildCheckoutButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
