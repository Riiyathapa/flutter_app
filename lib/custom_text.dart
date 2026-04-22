import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? labelText;
  final Widget? icon;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final void Function(String)? onChanged;
  String? hintText;

   CustomText({
    super.key,
    this.onChanged,
     this.autovalidateMode,
    this.labelText,
    this.icon,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.obscureText,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextFormField(
        autovalidateMode: autovalidateMode,
        onChanged: onChanged,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        obscureText: obscureText ?? false,
      ),
    );
  }
}
