import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_now/constant/colorConst.dart';


class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       SizedBox(height: 25,),
        Text(
          "GetX Shopping",
          style: TextStyle(
            fontSize: 25,
            color: TextColor2,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15,),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: GoogleFonts.cairo(
            fontSize: 18,
            fontWeight: FontWeight.w700

          ),
        ),
        SizedBox(height: 25,),
        Image.asset(
          image!,
          height: 250,
          width: double.infinity,
          // fit: BoxFit.cover,
        ),
      ],
    );
  }
}