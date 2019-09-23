import 'package:flutter/material.dart';

class Karma extends StatelessWidget {
  Widget build(BuildContext context) {
    return 
    Container(
      width: 124,
        padding: EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
        decoration: BoxDecoration(
        color: Color(0xFFFFC441),
        boxShadow: [BoxShadow(color: Colors.black38, offset: Offset(2, 2), blurRadius: 5)]
        ),
        child: Row(
          children: [
            Icon(Icons.remove, color: Color.fromARGB(255, 0, 0, 0)),
            Padding(
                padding: EdgeInsets.only(right: 12, left: 12),
                child: Text('500K',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.add, color: Color.fromARGB(255, 0, 0, 0)),
          ],
        ));
  }
}
