import 'package:flutter/material.dart';
import '../../components/karma.dart';

class Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32),
      child: Stack(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 32, bottom: 32, left: 16, right: 16),
          decoration: BoxDecoration(
            color: Color(0xFFEAEAEA),
            borderRadius: BorderRadius.circular(16)
          ),
          child: 
          Align(
            alignment: Alignment.topLeft,
            child: Text("CommentCommentCommentComment CommentCommentCommentComment CommentCommentCommentComment CommentCommentCommentCommentCommentComment CommentCommentCommentComment"),
          )
        ),
        Align(
          alignment: FractionalOffset(0.1, 0.5),
          heightFactor: 0,
          child: Card(
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
                          Text('u/ User', style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('Desde p/ pill'),
                        ]),
                  )),
              ButtonTheme(
                minWidth: 60.0,
                height: 30.0,
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Contestar"),
                ),
              )
            ],
          ),
        ))
        ),
        // Align(
        //   alignment: FractionalOffset(0.5, -1),
        //   heightFactor: 0, 
        //   child: Karma(),
        // )
      ],
    )
    );
  }
}