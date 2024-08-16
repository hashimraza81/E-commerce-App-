import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:ecommerce/view/product_list_screen.dart';
import 'package:ecommerce/view/profile-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../components/custombottomnavigation_bar.dart';
import '../components/search_bar.dart';
import '../utils/constant/app_colors.dart';
import '../utils/constant/app_images_constant.dart';
import '../utils/constant/app_textstyle_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  int _current = 0;

  final List<Map<String, String>> carouselItems = [
    {
      "image": AppImages.Baby,
      "text": "Get Winter Discount\n20% Off \nFor Children"
    },
    {"image": AppImages.Baby, "text": "Special Offer\n30% Off \n2For Kids"},
    {"image": AppImages.Baby, "text": "New Arrival\nUp to 50% Off"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildBodyContent(),
        bottomNavigationBar: CustombottomnavigationBar(
          onItemTapped: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget _buildBodyContent() {
    switch (_currentIndex) {
      case 0:
        return _buildHomeContent();
      case 1:
        return const Center(child: Text('Search Screen'));
      case 2:
        return const Center(child: Text('Shopping Bag Screen'));
      case 3:
        return const Center(child: ProfileScreen());
      default:
        return _buildHomeContent();
    }
  }

  Widget _buildHomeContent() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(AppImages.kashan),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello!',
                          style: pStyleBlack12300,
                        ),
                        Text(
                          'Kashan Ashraf',
                          style: pStyleBlack14600,
                        ),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.secondaryColor,
                  child: Icon(
                    Icons.notifications,
                    color: AppColors.textGreyColor,
                    size: 30.sp,
                  ),
                )
              ],
            ),
            SizedBox(height: 22.h),
            const SearchBarScreen(),
            SizedBox(height: 20.h),
            Container(
              height: 135.h,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: CarouselSlider(
                items: carouselItems.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            item["text"]!,
                            style: pStyleBlack14600.copyWith(
                                color: AppColors.whiteColor),
                            textAlign: TextAlign.center,
                          ),
                          Image.asset(
                            item["image"]!,
                            height: 135.h,
                            fit: BoxFit.fill,
                          ),
                        ],
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  height: 150.h,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                carouselItems.length,
                (index) => Container(
                  width: 15.0.w,
                  height: 12.0.h,
                  margin: EdgeInsets.symmetric(horizontal: 4.0.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? AppColors.primaryColor
                        : AppColors.greyColor2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured',
                  style: pStyleBlack16600,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const ProductListScreen());
                  },
                  child: Text(
                    'See All',
                    style: pStyleBlack12400.copyWith(
                        color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildProductCard(
                    image: AppImages.watch,
                    title: 'Watch',
                    price: '\$40',
                  ),
                  SizedBox(width: 25.w),
                  buildProductCard(
                    image: AppImages.Jacket,
                    title: 'Jacket',
                    price: '\$430',
                  ),
                  SizedBox(width: 25.w),
                  buildProductCard(
                    image: AppImages.Hoodie,
                    title: 'Hoodie',
                    price: '\$333',
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Most Popular',
                  style: pStyleBlack16600,
                ),
                Text(
                  'See All',
                  style:
                      pStyleBlack12400.copyWith(color: AppColors.primaryColor),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildProductCard(
                    image: AppImages.TV,
                    title: 'LG TV',
                    price: '\$330',
                  ),
                  SizedBox(width: 25.w),
                  buildProductCard(
                    image: AppImages.shoes,
                    title: 'Nike Shoes',
                    price: '\$50',
                  ),
                  SizedBox(width: 25.w),
                  buildProductCard(
                    image: AppImages.airpods,
                    title: 'Airpods',
                    price: '\$70',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildProductCard({
  required String image,
  required String title,
  required String price,
}) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            height: 99.h,
            width: 126.w,
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
        width: 126.w,
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
              Text(
                price,
                style: pStyleBlack14600.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
