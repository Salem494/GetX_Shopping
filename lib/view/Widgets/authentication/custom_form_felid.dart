import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_text.dart';
import 'dart:collection';

class CustomTextFormField extends StatelessWidget {
    String text;
    final Function onSave;
    final Function validator;

  CustomTextFormField({
    required this.text,
    required this.onSave,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
          TextFormField(
          onSaved:onSave(),
            validator: validator(),
            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              fillColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}