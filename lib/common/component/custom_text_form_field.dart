import 'package:flutter/material.dart';
import 'package:study_flutter_level2/common/const/colors.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autoFocus;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({ super.key, this.hintText, this.errorText, this.obscureText = false, this.autoFocus = true, this.onChanged});

  @override
  Widget build(BuildContext context) {

    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: inputBorderColor,
        width: 1.0,
      ),
    );

    return TextFormField(
      cursorColor: primaryColor,
      obscureText: obscureText,
      autofocus: autoFocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        hintText: hintText,
        errorText: errorText,
        hintStyle: TextStyle(
          color: bodyTextColor,
          fontSize: 14.0,
        ),
        filled: true,
        fillColor: inputBgColor,
        border: baseBorder,
        focusedBorder: baseBorder.copyWith(
          borderSide: baseBorder.borderSide.copyWith(
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
