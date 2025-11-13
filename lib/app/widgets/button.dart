import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text; // cho phép null
  final IconData? icon;
  final VoidCallback onPressed;
  final Color? color;
  final double? width;
  final double? height;
  final double borderRadius;

  const CustomButton({
    super.key,
    this.text,
    required this.onPressed,
    this.icon,
    this.color,
    this.width,
    this.height,
    this.borderRadius = 16,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: const BorderSide(
            color: Color.fromRGBO(218, 218, 218, 1),
            width: 1,
          ),
          backgroundColor: color ?? Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, color: Colors.black),
              if (text != null) const SizedBox(width: 8),
            ],
            if (text != null)
              Text(
                text!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  // fontWeight: FontWeight.w600,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
