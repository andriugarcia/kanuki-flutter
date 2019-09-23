import 'package:flutter/material.dart';
import 'package:expandable_card/expandable_card.dart';

import '../../components/post/bottomPostBar.dart';
import './cardContent.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ExpandableCardPage(
      page: Center(
        child: ListView(
          shrinkWrap: false,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.arrow_back), color: Colors.black, onPressed: () => {},),
                FlatButton(child: Text("PUBLICAR", style:TextStyle(color: Colors.black)))
              ],
            ),
            Text("Background page"),
            

          ]
        )
      ),
      expandableCard: ExpandableCard(
        backgroundColor: Colors.white,
        hasRoundedCorners: true,
        minHeight: 126,
        maxHeight: MediaQuery.of(context).size.height,
        hasHandle: false,
        padding: EdgeInsets.all(8),
        children: [
          Row(children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
            ),
            Expanded(
                flex: 2,
                child: Container(
                  margin: new EdgeInsets.only(left: 12),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'p/ Pill',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('u/ User'),
                      ]),
                )),
            FloatingActionButton(
              heroTag: 'addfavorites',
              child: Icon(Icons.star_border),
              backgroundColor: Color(0xFFED5261), //Red
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              color: Colors.black,
            ),
          ]),
          BottomPostBar(),
          CardContent()
        ],
      ),
    ));
  }
}
