import 'package:flutter/material.dart';
import '../../components/post/post.dart';
import '../../wrapper.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrapper(
        child: ListView(shrinkWrap: false, children: [
      Padding(
        padding: EdgeInsets.only(right: 16, left: 16, top: 32, bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Buscar', style: TextStyle(fontSize: 32)),
            Padding(
              padding:EdgeInsets.only(top: 16, bottom: 16),
              child: 
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                      ),
                      hintText: 'Buscar'),
                ),
            )
          ],
        )
      ),
      Post(),
      Post(),
      Post(),
      Post(),
    ]));
  }
}
