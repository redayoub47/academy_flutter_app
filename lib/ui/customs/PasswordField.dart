import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  PasswordField({
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
  });
  final Key fieldKey;
  final String hintText;
  final String labelText;
  final String helperText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onFieldSubmitted;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: _obscureText,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: widget.labelText,
          helperText: widget.helperText,
          suffixIcon: GestureDetector(
            onTap: () => setState(() {
                  _obscureText = !_obscureText;
                }),
            child: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
          )),
    );
  }
}
