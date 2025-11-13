import 'package:flutter/material.dart';

class RowText02 extends StatelessWidget {
  final String textStart;
  final String textEnd;
  final TextStyle textStyleStart;
  const RowText02({
    super.key,
    required this.textStart,
    required this.textEnd,
    required this.textStyleStart,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textStart,
          style: textStyleStart,
        ),
        Text(
          textEnd,
        )
      ],
    );
  }
}
