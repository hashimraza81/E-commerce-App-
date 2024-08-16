import 'package:ecommerce/utils/constant/app_images_constant.dart';
import 'package:ecommerce/view/cart-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/constant/app_colors.dart';
import '../utils/constant/app_textstyle_constant.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageSection(context),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitleAndPrice(),
                  _buildRating(),
                  SizedBox(height: 20.h),
                  _buildSectionTitle('Description'),
                  _buildDescription(),
                  SizedBox(height: 20.h),
                  _buildSectionTitle('Size'),
                  SizedBox(height: 20.h),
                  _buildSizeOptions(),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const CartScreen());
                    },
                    child: _buildActionButtons(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection(BuildContext context) {
    return Container(
      height: 375.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
        ),
        image: const DecorationImage(
          image: AssetImage(AppImages.shoes),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 70.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIconButton(
              icon: Icons.arrow_back,
              onPressed: () => Navigator.pop(context),
            ),
            _buildIconButton(
              icon: Icons.favorite,
              iconColor: Colors.red,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton({
    required IconData icon,
    Color? iconColor,
    required VoidCallback onPressed,
  }) {
    return CircleAvatar(
      radius: 25.r,
      backgroundColor: AppColors.secondaryColor,
      child: IconButton(
        icon: Icon(
          icon,
          color: iconColor ?? AppColors.blackColor,
          size: 25.sp,
        ),
        onPressed: onPressed,
      ),
    );
  }

  Widget _buildTitleAndPrice() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nike Shoes',
          style: pStyleBlack20600,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            '\$430',
            style: pStyleBlack16600.copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }

  Widget _buildRating() {
    return SizedBox(
      width: 150.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.star,
            color: AppColors.starColor,
            size: 30.sp,
          ),
          SizedBox(width: 5.w),
          Text(
            '4.8',
            style: pStyleBlack12300,
          ),
          SizedBox(width: 10.w),
          Text(
            '(20 Review)',
            style: pStyleBlack14600.copyWith(color: AppColors.textGreyColor),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: pStyleBlack20600,
    );
  }

  Widget _buildDescription() {
    return Text(
      'Culpa aliquam consequuntur veritatis at consequuntur praesentium beatae temporibus nobis. Velit dolorem facilis neque autem. Itaque voluptatem expedita qui eveniet id veritatis eaque. Blanditiis quia placeat nemo. Nobis laudantium nesciunt perspiciatis sit eligendi.',
      style: pStyleBlack12600.copyWith(color: AppColors.textGreyColor),
      textAlign: TextAlign.justify,
    );
  }

  Widget _buildSizeOptions() {
    final sizes = ['7.5', '10', '38', '40'];
    return Row(
      children: sizes.map((size) => _buildSizeOption(size)).toList(),
    );
  }

  Widget _buildSizeOption(String size) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.greyColor3, width: 2.w),
        ),
        child: Center(
          child: Text(
            size,
            style: pStyleBlack14600,
          ),
        ),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildButton(
          label: 'Buy Now',
          width: 200.w,
          color: AppColors.primaryColor,
          textColor: AppColors.whiteColor,
        ),
        _buildButton(
          icon: Icons.shopping_bag,
          width: 100.w,
          color: AppColors.secondaryColor,
          iconColor: AppColors.greyColor2,
        ),
      ],
    );
  }

  Widget _buildButton({
    String? label,
    IconData? icon,
    required double width,
    required Color color,
    Color? textColor,
    Color? iconColor,
  }) {
    return Container(
      height: 50.h,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Center(
        child: label != null
            ? Text(
                label,
                style: pStyleBlack14600.copyWith(color: textColor),
              )
            : Icon(
                icon,
                color: iconColor,
                size: 30.sp,
              ),
      ),
    );
  }
}
