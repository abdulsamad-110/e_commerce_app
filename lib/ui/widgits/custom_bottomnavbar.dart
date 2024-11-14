import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final Color backgroundColor;
  final Color selectedColor;
  final Color unselectedColor;
  final Color underlineColor;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    this.backgroundColor = Colors.black,
    this.selectedColor = Colors.white,
    this.unselectedColor = Colors.grey,
    this.underlineColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavItem(label: 'home', index: 0),
          buildNavItem(label: 'search', index: 1),
          buildNavItem(label: 'favourites', index: 2),
          buildNavItem(label: 'cart', index: 3),
          buildNavItem(label: 'account', index: 4),
        ],
      ),
    );
  }

  Widget buildNavItem({required String label, required int index}) {
    bool isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index), // Call the onTap function with the index
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 0),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? selectedColor : unselectedColor,
              fontSize: 14,
              // fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          const SizedBox(height: 0),
          Container(
            width: 45,
            height: 2,
            color: isSelected ? underlineColor : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
