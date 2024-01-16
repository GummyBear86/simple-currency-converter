import 'package:basic_currency_converter/common/constants/constants.dart';
import 'package:flutter/material.dart';

class ConvertButton extends StatelessWidget {
  const ConvertButton({super.key, required this.onPressed});

/// can also use Function() instead of VoidCallback if you want.
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: ConverterColors.kpurple,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        minimumSize: const Size(double.infinity, 50),
        // padding: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text(
        'Convert',
      ),
    );
  }
}
