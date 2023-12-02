import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final bool isLoading;
  final String label;
  final VoidCallback onPressed;

  const BaseButton({
    super.key,
    required this.label,
    this.isLoading = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: isLoading ? Colors.grey : Colors.green,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
        minimumSize: const Size(double.infinity, 36),
      ),
      onPressed: !isLoading ? onPressed : null,
      child: isLoading
          ? const SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : Text(label),
    );
  }
}
