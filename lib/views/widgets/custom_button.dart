import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.onTap, this.color, this.text, this.isLoading = false});

  final Color? color;
  final String? text;
  final VoidCallback? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12)),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(
            child: isLoading == false
                ? Text(
                    text!,
                    style: const TextStyle(color: Colors.black),
                  )
                : const CircularProgressIndicator(
                    color: Colors.black,
                  )),
      ),
    );
  }
}
