import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void showSnackBar({required String message, Color? color = Colors.black}) {
    ScaffoldMessenger.of(
      this,
    ).showSnackBar(SnackBar(content: Text(message), backgroundColor: color));
  }
}
