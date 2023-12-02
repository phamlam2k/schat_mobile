import 'package:flutter/material.dart';

class BasePasswordInput extends StatefulWidget {
  final String hintText;
  final String iconPath;
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;

  const BasePasswordInput({
    super.key,
    required this.hintText,
    required this.label,
    required this.controller,
    this.iconPath = "",
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  @override
  _BasePasswordInputState createState() => _BasePasswordInputState();
}

class _BasePasswordInputState extends State<BasePasswordInput> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: const TextStyle(color: Colors.black)),
        const SizedBox(height: 10.0),
        TextFormField(
          obscureText: _isObscured,
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(widget.iconPath),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _isObscured ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _isObscured = !_isObscured;
                });
              },
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        )
      ],
    );
  }
}
