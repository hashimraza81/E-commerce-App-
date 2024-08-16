import 'package:flutter/material.dart';

import '../utils/constant/app_colors.dart';

class AppTheme {
 static final lightThemeMode = ThemeData.light().copyWith(
   scaffoldBackgroundColor: AppColors.whiteColor,
   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
     backgroundColor: AppColors.secondaryColor,
   ),
 );

}