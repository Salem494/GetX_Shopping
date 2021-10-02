import 'package:flutter/material.dart';

class Ads extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Image.asset('assets/1.png',height: 150,)),
        Expanded(child: Image.asset('assets/caert_empty.png',height: 150,)),
      ],
    );
  }
}
