import 'package:flutter/material.dart';
import '../../components/comments/comments.dart';

class CardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
      height: MediaQuery.of(context).size.height - 112,
      width: double.infinity,
      child: 
      ListView(
        shrinkWrap: false,
        children: [
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style:TextStyle(fontSize: 20)),
          Comments()
        ]
      ))
    );
  }
}
