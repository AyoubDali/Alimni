import 'package:flutter/material.dart';

class CustomTextInputField extends StatelessWidget {
  final String hintText, labelText, fieldKey;
  final TextEditingController controller;
  final TextInputType inputType;
  final Function(String) fieldValidator;
  final void Function(String) onChanged;
  final IconData iconData;
  final bool isObscure, isReadOnly;
  const CustomTextInputField(
      {Key key,
      this.isReadOnly = false,
      this.fieldKey,
      this.onChanged,
      this.controller,
      this.hintText,
      this.iconData,
      this.labelText,
      this.fieldValidator,
      this.inputType = TextInputType.text,
      this.isObscure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.black54,
      ),
      child: SizedBox(
        height: 50.0,
        child: TextFormField(
          readOnly: isReadOnly,
          style: TextStyle(fontSize: 15.0),
          key: Key(fieldKey),
          controller: controller,
          obscureText: isObscure,
          decoration: new InputDecoration(
            border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.teal)),
            hintText: hintText ?? "",
            labelText: labelText ?? "",
          ),
          keyboardType: inputType,
          validator: fieldValidator,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
