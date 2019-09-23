import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: SizedBox(
          width: 240,
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.searchpng.com/wp-content/uploads/2019/02/Profile-ICon.png'),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    margin: new EdgeInsets.only(left: 12),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('p/ Pill', style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('u/ User'),
                        ]),
                  )),
              ButtonTheme(
                minWidth: 60.0,
                height: 30.0,
                child: FlatButton(
                  onPressed: () {},
                  child: Text("FOLLOW"),
                ),
              )
            ],
          ),
        ));
  }
}
