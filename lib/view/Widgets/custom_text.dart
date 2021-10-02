import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomText extends StatelessWidget {
  final String text;

  final double fontSize;
  final double height;
  final Color color;
  final int maxLine;
  final Alignment alignment;


  CustomText({
    this.text = '',
    this.fontSize = 16,
    this.color = Colors.black,
     this.height = 1,
    this.alignment = Alignment.topLeft,
    this.maxLine = 5 ,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: GoogleFonts.cairo(
          color: color,
          fontWeight: FontWeight.w700,
          fontSize: fontSize,
        ),
      ),
    );
  }
}