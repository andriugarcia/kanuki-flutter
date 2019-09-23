import 'package:flutter/material.dart';
import '../../wrapper.dart';

class Followed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrapper(
        child: Column(
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
            Text('SEGUIDORES', style: TextStyle(letterSpacing: 2))
          ],
        ),
        Container(
            padding: EdgeInsets.only(left: 32, right: 32),
            height: MediaQuery.of(context).size.height - 129,
            child: ListView(shrinkWrap: false, children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.searchpng.com/wp-content/uploads/2019/02/Profile-ICon.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text("u/ user")
                  ),
                  Spacer(),
                  FlatButton(
                    child: Text("SIGUIENDO"),
                  )
                ],
              )
            ]))
      ],
    ));
  }
}