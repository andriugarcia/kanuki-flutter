import 'package:flutter/material.dart';
import '../../components/karma.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomPostBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FlatButton(
          child: Row(
            children: [
              Text('253'),
              Icon(Icons.mode_comment, color: Color.fromARGB(100, 0, 0, 0)),
            ],
          ),
          onPressed: () => {},
        ),
        Karma(),
        FlatButton(
          child: Row(
            children: [
              Text('253'),
              Icon(Icons.share, color: Color.fromARGB(100, 0, 0, 0)),
            ],
          ),
          onPressed: () => {
            Scaffold.of(context).showBottomSheet((context) => 
            Container(
              height: 300,
              width: double.infinity,
              padding: EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Color(0xFFED5261),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              ),
              child: ListView(
                children: [ // Cambiar por el share del sistema
                  Text("Compartir", style:TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.whatsapp, color: Colors.black,),
                    title: Text("Whatsapp"),
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.telegram, color: Colors.black,),
                    title: Text("Telegram"),
                  ),
                ],
              )
            )
              
            )
          },
        ),
      ],
    );
  }
}
