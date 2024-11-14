import 'package:flutter/material.dart';

class Entries extends StatelessWidget {
  const Entries({
    super.key,
    required this.entryText,
    required this.entryAmount,
    this.amountSize = 24,
    this.icon,
  });

  final double? amountSize;
  final String entryText;
  final String entryAmount;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              entryText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),

            // Icon(),
          ],
        ),
        Text(
          entryAmount,
          style: TextStyle(
            color: Colors.white,
            fontSize: amountSize,
          ),
        ),
      ],
    );
  }
}
