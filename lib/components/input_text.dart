import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText({super.key, required this.controller, required this.hint});

  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 2,
          strokeAlign: BorderSide.strokeAlignCenter,
          style: BorderStyle.solid,
        ),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.grey[700], fontSize: 16),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey[600], fontSize: 16),
        ),
      ),
    );
  }
}
