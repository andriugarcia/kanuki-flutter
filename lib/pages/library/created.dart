import 'package:flutter/material.dart';
import '../../wrapper.dart';
import '../../components/post/post.dart';

class Created extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrapper(
        child: ListView(
      shrinkWrap: false,
      children: [
        Row(
          children: [
            FlatButton(
              child:
                  Icon(Icons.arrow_back, color: Color.fromARGB(255, 0, 0, 0)),
              onPressed: () => {
                Navigator.pop(context)
              },
            ),
            Text('CREADAS', style: TextStyle(letterSpacing: 2))
          ],
        ),
        Post(),
        Post(),
        Post(),
        Post(),
        Post(),
        Post(),
      ],
    ));
  }
}