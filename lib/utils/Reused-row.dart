import 'package:ecommerce/utils/constant/app_images_constant.dart';
import 'package:ecommerce/utils/constant/app_textstyle_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class ReusedRow extends StatelessWidget {
  String text;
  String image;
  final VoidCallback ontap;
  String? text2;

  ReusedRow({
    super.key,
    required this.text,
    required this.image,
    required this.ontap,
    this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF8F7F7),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: ontap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(image),
                  SizedBox(
                    width: 10.0.w,
                  ),
                  Text(
                    text,
                    style: pStyleBlack14600,
                  ),
                ],
              ),
              if (text2 != null) Text(text2!),
              // Always show the arrow icon
              SvgPicture.asset(AppImages.arrow),
            ],
          ),
        ),
      ),
    );
  }
}
