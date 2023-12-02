import 'package:flutter/material.dart';

class BaseInputForm extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final String iconPath;
  final String label;
  final String errorMessage;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const BaseInputForm({
    super.key,
    required this.hintText,
    required this.label,
    required this.controller,
    this.iconPath = "",
    this.errorMessage = "",
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.black)),
        const SizedBox(height: 10.0),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0), // Điều chỉnh padding nếu cần
              child: Image.asset(iconPath), // Sử dụng ảnh như một icon
            ),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return errorMessage;
            }
            return null;
          },
        )
      ],
    );
  }
}
