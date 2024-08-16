import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/widgets_screen.dart';
import '../utils/constant/app_colors.dart';
import '../utils/constant/app_images_constant.dart';
import '../utils/constant/app_textstyle_constant.dart';
import 'checkout_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildHeader(context, title: 'Cart'),
              SizedBox(height: 20.h),
              CartItem(
                image: AppImages.shoes,
                name: 'Nike Shoes',
                brand: 'Nike',
                price: 40,
                quantity: 2,
                onDelete: () {},
                onIncrease: () {},
                onDecrease: () {},
              ),
              SizedBox(height: 15.h),
              CartItem(
                image: AppImages.watch,
                name: 'Watch',
                brand: 'Apple',
                price: 70,
                quantity: 5,
                onDelete: () {},
                onIncrease: () {},
                onDecrease: () {},
              ),
              SizedBox(height: 15.h),
              CartItem(
                image: AppImages.TV,
                name: 'Apple TV',
                brand: 'Apple',
                price: 540,
                quantity: 100,
                onDelete: () {},
                onIncrease: () {},
                onDecrease: () {},
              ),
              SizedBox(height: 20.h),
              buildTotalPrice(),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Get.to(() => const CheckoutScreen());
                },
                child: buildCheckoutButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

class CartItem extends StatelessWidget {
  final String image;
  final String name;
  final String brand;
  final double price;
  final int quantity;
  final VoidCallback onDelete;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const CartItem({
    required this.image,
    required this.name,
    required this.brand,
    required this.price,
    required this.quantity,
    required this.onDelete,
    required this.onIncrease,
    required this.onDecrease,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
        child: Row(
          children: [
            _buildItemImage(),
            SizedBox(width: 10.w),
            _buildItemDetails(),
            Spacer(),
            _buildQuantityControl(),
          ],
        ),
      ),
    );
  }

  Widget _buildItemImage() {
    return Container(
      height: 110.h,
      width: 126.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildItemDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: pStyleBlack16600,
        ),
        SizedBox(height: 5.h),
        Text(
          brand,
          style: pStyleBlack12600.copyWith(
            color: AppColors.greyColor3,
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          '\$ $price',
          style: pStyleBlack12600.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }

  Widget _buildQuantityControl() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButton(
          onPressed: onDelete,
          icon: Icon(
            Icons.delete,
            color: AppColors.greyColor3,
            size: 25.sp,
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: onDecrease,
              icon: CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 10.r,
                child: Icon(
                  Icons.remove,
                  color: AppColors.whiteColor,
                  size: 15.sp,
                ),
              ),
            ),
            Text(
              quantity.toString(),
              style: pStyleBlack16600.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            IconButton(
              onPressed: onIncrease,
              icon: CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 10.r,
                child: Icon(
                  Icons.add,
                  color: AppColors.whiteColor,
                  size: 15.sp,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
Widget buildTotalPrice() {
  return Row(
    children: [
      Container(
        height: 240.h,
        width: 360.w,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order Summary',
                style: pStyleBlack16600,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Items',
                    style: pStyleBlack14600,
                  ),
                  Text(
                    '\$ 1000',
                    style: pStyleBlack12600,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: pStyleBlack14600,
                  ),
                  Text(
                    '\$ 1000',
                    style: pStyleBlack12600,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discount',
                    style: pStyleBlack14600,
                  ),
                  Text(
                    '\$ 1000',
                    style: pStyleBlack12600,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Charges',
                    style: pStyleBlack14600,
                  ),
                  Text(
                    '\$ 1000',
                    style: pStyleBlack12600,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Divider(),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: pStyleBlack14600,
                  ),
                  Text(
                    '\$ 5000',
                    style: pStyleBlack12600,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    ],
  );
}
Widget buildCheckoutButton() {
  return Container(
    height: 50.h,
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(30.r),
    ),
    child: Center(
      child: Text(
        'Checkout',
        style: pStyleBlack14600.copyWith(color: AppColors.whiteColor),
      ),
    ),
  );
}