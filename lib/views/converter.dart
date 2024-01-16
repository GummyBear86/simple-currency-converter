import 'package:flutter/material.dart';

import 'package:basic_currency_converter/common/constants/constants.dart';
import 'package:basic_currency_converter/common/widgets/widgets.dart';

/// 1. Create variable that stores converted currency value
/// 2. Create function that multiplies value by input from user (TextField value) ... a function that will convert values
/// 3. Store converted value in created variable from Step 1.
/// 4. Display value what was stored in variable from Step 1.

class ConverterView extends StatefulWidget {
  const ConverterView({super.key});

  @override
  State<ConverterView> createState() => _ConverterViewState();
}

class _ConverterViewState extends State<ConverterView> {
  final TextEditingController _convertController = TextEditingController();

  void convertfromUSCurrency() {
    /// The values below can be found in the values.dart file in the common/constants folder. Just a few examples to get the idea.

    /// United States Dollar -> USD 1
    /// Egyptian Pound -> EGP 30.66
    /// Guatemalan Quetz -> GTQ 7.78
    ConverterValues.result = double.parse(_convertController.text.trim()) *
        ConverterValues.egyptianPound;
    _convertController.clear();
    setState(() {});
  }

  @override
  void dispose() {
    _convertController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Display stored variable in Text Widget
              /// if want starting value to be 0 and not 0.00 use terinary operator just copy and paste line below into the Text Widget
              /// 'EGP ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              Text(
                '${ConverterValues.egyptian}   ${ConverterValues.result.toStringAsFixed(2)}',
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              CurrencyTextField(controller: _convertController),
              const SizedBox(
                height: 15,
              ),

              /// when user presses the button the on pressed function will then run the function that was created to get the actual converted value to be displayed in the Text Widget
              ConvertButton(onPressed: convertfromUSCurrency),
            ],
          ),
        ),
      ),
    );
  }
}
