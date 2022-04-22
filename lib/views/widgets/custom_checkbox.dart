import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox(
      {required this.labelWidget, this.value = false, required this.onChanged});

  final Widget labelWidget;
  final bool value;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
          ),
          Flexible(
            child: labelWidget,
          ),
        ],
      ),
    );
  }
}
