import 'package:basic_currency_converter/common/constants/constants.dart';
import 'package:flutter/material.dart';

class CurrencyTextField extends StatelessWidget {
  const CurrencyTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Enter your US currency amount',
        prefixIcon: const Icon(Icons.monetization_on_outlined),
        filled: true,
        fillColor: ConverterColors.kpurple,
        focusedBorder: ConverterStyles.border,
        enabledBorder: ConverterStyles.border,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: true,
      ),
    );
  }
}
