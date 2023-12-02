import 'package:flutter/material.dart';

class BaseCheckBox extends StatefulWidget {
  final String label;

  const BaseCheckBox({super.key, required this.label});

  @override
  _BaseCheckBoxState createState() => _BaseCheckBoxState();
}

class _BaseCheckBoxState extends State<BaseCheckBox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue!;
            });
          },
          // Style your checkbox here
          // activeColor: Colors.blue, // Màu khi checkbox được chọn
          // checkColor: Colors.white, // Màu của dấu tick
        ),
        GestureDetector(
          onTap: () {
            // Khi nhấn vào text, cũng đổi trạng thái của checkbox
            setState(() {
              _isChecked = !_isChecked;
            });
          },
          child: Text(
            widget.label,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
