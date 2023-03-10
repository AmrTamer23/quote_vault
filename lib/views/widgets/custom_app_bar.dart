import 'package:flutter/material.dart';

import 'package:quote_vault/views/widgets/custom_button_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title, this.icon, this.onTap});

  final String? title;
  final IconData? icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title!,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        CustomButtonIcon(
          icon: icon,
          onTap: onTap,
        ),
      ],
    );
  }
}
