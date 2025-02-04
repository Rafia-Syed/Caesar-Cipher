import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Custom IconButton for copying text
class CopyIconButton extends StatelessWidget {
  final String text; // Text to copy
  final BuildContext context; // BuildContext for showing Snackbar

  const CopyIconButton({
    super.key,
    required this.text,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.copy),
      onPressed: () {
        Clipboard.setData(ClipboardData(text: text)).then((_) {
          // Show a Snackbar to notify the user
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Copied to clipboard: $text'),
              duration: Duration(seconds: 1),
            ),
          );
        });
      },
    );
  }
}