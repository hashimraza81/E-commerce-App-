import 'package:flutter/material.dart';

import '../utils/constant/app_colors.dart';

class CustombottomnavigationBar extends StatefulWidget {
  final ValueChanged<int> onItemTapped;
  const CustombottomnavigationBar({Key? key, required this.onItemTapped})
      : super(key: key);

  @override
  State<CustombottomnavigationBar> createState() =>
      _CustombottomnavigationBarState();
}

class _CustombottomnavigationBarState
    extends State<CustombottomnavigationBar> {
  int _selectedIndex = 0;

  void _handleItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onItemTapped(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0
                  ? AppColors.primaryColor
                  : AppColors.greyColor3,
              size: 30.0,
            ),
            onPressed: () => _handleItemTapped(0),
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: _selectedIndex == 1
                  ? AppColors.primaryColor
                  : AppColors.greyColor3,
              size: 30.0,
            ),
            onPressed: () => _handleItemTapped(1),
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_bag,
              color: _selectedIndex == 2
                  ? AppColors.primaryColor
                  : AppColors.greyColor3,
              size: 30.0,
            ),
            onPressed: () => _handleItemTapped(2),
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: _selectedIndex == 3
                  ? AppColors.primaryColor
                  : AppColors.greyColor3,
              size: 30.0,
            ),
            onPressed: () => _handleItemTapped(3),
          ),
        ],
      ),
    );
  }
}
