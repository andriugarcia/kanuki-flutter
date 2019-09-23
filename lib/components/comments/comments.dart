import 'package:flutter/material.dart';
import '../comments/comment.dart';

class Comments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text("15 Comentarios", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        ),
        Comment(),
        Comment(),
        Comment(),
      ],
    );
  }
}