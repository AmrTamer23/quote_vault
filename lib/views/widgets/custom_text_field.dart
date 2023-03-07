import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.onChanged,
      this.hint,
      this.obscure = false,
      this.maxlines = 1});

  final Function(String)? onChanged;
  final String? hint;
  final bool? obscure;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return TextFormField(
      obscureText: obscure!,
      onChanged: onChanged,
      maxLines: maxlines,
      cursorColor: Colors.amber,
      validator: (data) {
        if (data!.isEmpty) {
          return "Shouldn't Be Empty";
        }
      },
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white54),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.amberAccent)),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.white),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.redAccent),
        ),
      ),
    );
  }
}
