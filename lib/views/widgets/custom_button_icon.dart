import 'package:flutter/material.dart';

class CustomButtonIcon extends StatelessWidget {
  const CustomButtonIcon({super.key, this.icon, this.onTap});
  final IconData? icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 46,
        width: 46,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.07),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(icon, size: 28),
      ),
    );
  }
}
