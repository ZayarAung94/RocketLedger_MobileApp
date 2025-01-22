import 'package:flutter/material.dart';

class AppDataRow extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;
  const AppDataRow({
    super.key,
    required this.label,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$label :",
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: valueColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
