import 'package:flutter/material.dart';
import '../../utils/text_styles.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const CommonButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFFD233),
          foregroundColor: Colors.black,              
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: AppTextStyles.bodyMedium,
        ),
      ),
    );
  }
}