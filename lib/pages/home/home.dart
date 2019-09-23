import 'package:flutter/material.dart';
import '../../components/post/post.dart';
import '../../wrapper.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Wrapper(
        child: ListView(shrinkWrap: false, children: [
              Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'u/ user',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )),
                      Spacer(flex: 2),
                      Icon(Icons.whatshot,
                          color: Color.fromARGB(255, 255, 0, 0))
                    ],
                  )),
              Post(),
              Post(),
              Post(),
              Post()
            ]));
  }
}
