import 'package:flutter/material.dart';

import '../app_colors.dart';

class MyTextfield extends StatelessWidget {
  const MyTextfield({
    Key? key,
    this.hintText = '',
    required this.keyboardType,
    required this.onChanged,
  }) : super(key: key);

  final String hintText;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.cyan,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 2,
            color: Colors.black26,
          ),
        ],
      ),
      child: TextFormField(
        textAlign: TextAlign.left,
        onChanged: onChanged,
        keyboardType: keyboardType,
        cursorColor: Colors.black54,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
