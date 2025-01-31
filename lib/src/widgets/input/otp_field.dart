import 'package:flutter/material.dart';

class OtpField extends TextFormField {
  OtpField({
    super.key,
    super.onSaved,
    required Color borderColor,
  }) : super(
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.none,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
          autofocus: true,
          maxLines: 1,
          validator: (String? value) => value!.isEmpty ? 'Enter OTP' : null,
          obscureText: false,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            isDense: true,
            hintText: 'ENTER',
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14.0),
            contentPadding: const EdgeInsets.all(10.0),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 0.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor, width: 1.0),
            ),
          ),
        );
}
