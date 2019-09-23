import 'package:flutter/material.dart';

import '../../components/post/post.dart';
import '../../wrapper.dart';

class Pill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
            pinned: true,
            
            backgroundColor: Color(0xFFED5261),
            expandedHeight: 220.0,
            
            flexibleSpace: FlexibleSpaceBar(
                title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.brown.shade800,
                    child: Text('P'),
                  ),
                ),
                Text('p/test'),
              ],
            ),
            background: Image.network("https://i.pinimg.com/originals/c4/c4/9e/c4c49e32fc88f679e868dac8dbf17226.jpg", fit: BoxFit.cover),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back,
                  color: Color.fromARGB(255, 255, 255, 255)),
              onPressed: () => {Navigator.pop(context)},
            ),
            actions: [
              FlatButton(
                child: Text('FOLLOW', style: TextStyle(color: Colors.white)),
                onPressed: () => {},
              )
            ]),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(children: [
                    Container(
                      color: Color(0x30ED5261),
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 4, right: 8, left: 8),
                          child: Text('#Tag',
                              style: TextStyle(color: Color(0xFFED5261)))),
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: Text('Información', style: TextStyle(fontSize: 24)),
                  ),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                    child: Text("FOLLOW", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    color: Color(0xFF4F9CD1),
                    onPressed: () => {},
                  )
                  )
                ],
              )),
          Post(),
          Post(),
          Post(),
        ]))
      ],
    ));
  }
}
