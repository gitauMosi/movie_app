// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyFilterChip extends StatelessWidget {
  final String label;
  final Color? color;

  const MyFilterChip({
    super.key,
    required this.label,
    this.color,
  });

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Chip(
        side: BorderSide.none,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide.none
        ),
        label: Text(
          label,
          style:  TextStyle(color: color != null ? Colors.white : Theme.of(context).textTheme.titleSmall?.color),
        ),
        backgroundColor: color ?? Colors.grey[300],
      ),
    );
  }
}
