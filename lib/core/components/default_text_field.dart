import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  DefaultTextField({
    super.key,
    required this.controller,
    required this.icon,
    required this.label,
    this.isPassword = false,
    this.keyboardType = TextInputType.text
  });

  TextEditingController controller;
  String label;
  IconData icon;
  bool isPassword;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 226, 226, 226),
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: keyboardType,
        controller: controller,
        maxLines: 1,
        minLines: 1,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(icon),
          hintText: label,
        ),
      ),
    );
  }
}
