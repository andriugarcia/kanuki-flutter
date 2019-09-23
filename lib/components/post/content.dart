import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(120, 120, 120, 40),
        borderRadius: BorderRadius.circular(16)
      ),
      height: 240,
    );
  }
}