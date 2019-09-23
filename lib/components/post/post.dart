import 'package:flutter/material.dart';
import './header.dart';
import './content.dart';
import './data.dart';
import './bottomPostBar.dart';

class Post extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 24, bottom: 12),
        child: Stack(children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'card');
              },
              child: Column(children: [
              Content(),
              Align(
                  alignment: FractionalOffset(0.9, 0.5),
                  heightFactor: 0,
                  child:
                  FloatingActionButton(
                    heroTag: null,
                    child: Icon(Icons.add),
                    backgroundColor: Color(0xFFED5261),
                    onPressed: () => {
                      print("TEST")
                    },
                  )
                  ),
              Padding(
                  padding: EdgeInsets.only(top: 24, right: 24, left: 24),
                  child: Column(children: [Data(), BottomPostBar()]))
            ])),
          ),
          Align(
              alignment: FractionalOffset(0.1, 0.5),
              heightFactor: 0,
              child: Header()),
        ]));
  }
}
