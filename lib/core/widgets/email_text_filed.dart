import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

    const EmailTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.w400,
        fontFamily: "Poppins",),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black54),
        filled: false,
        prefixIcon: Icon(Icons.email),

        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey)),
      ),

    );
  }
}