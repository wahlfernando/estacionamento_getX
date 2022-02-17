import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class GaragemTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final bool? uppercase;

  const GaragemTextFormField({
    required this.label,
    this.controller,
    this.validator,
    this.onChanged,
    this.obscureText = false,
    this.uppercase = false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: uppercase! ?  TextCapitalization.characters : TextCapitalization.sentences,
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      cursorColor: context.theme.primaryColor,
      decoration: InputDecoration(
        isDense: true,
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black),
        errorStyle: const TextStyle(color: Colors.redAccent),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(23),
          borderSide: BorderSide(color: Colors.grey[400]!)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(23),
          borderSide: BorderSide(color: Colors.grey[400]!)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(23),
          borderSide: BorderSide(color: Colors.grey[400]!)
        ),
        filled: true,
        fillColor: Colors.white
      ),
    );
  }
}
