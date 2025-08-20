import 'package:flutter/material.dart';

void showErrorDialog(BuildContext context, String title, String message) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text(title),
      content: Text(message, style: TextStyle(color: Colors.black),),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("OK"),
        ),
      ],
    ),
  );
}