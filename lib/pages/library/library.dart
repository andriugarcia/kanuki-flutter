import 'package:flutter/material.dart';
import '../../wrapper.dart';
import './created.dart';
import './favorites.dart';
import './followed.dart';
import './followers.dart';
import './published.dart';
import './saved.dart';

class Library extends StatelessWidget {
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
            Text('BIBLIOTECA', style: TextStyle(letterSpacing: 2))
          ],
        ),
        Padding(
            padding: EdgeInsets.only(top: 24, left: 12, right: 12, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Followers()))
                    },
                    child: Column(
                      children: [
                        Text('32',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold)),
                        Text('Seguidores',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    )),
                InkWell(
                    onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Saved()))
                    },
                    child: Column(
                      children: [
                        Text('32',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold)),
                        Text('Guardados',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    )),
                InkWell(
                    onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Followed()))
                    },
                    child: Column(
                      children: [
                        Text('32',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold)),
                        Text('Seguidos',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    )),
              ],
            )),
        Expanded(
            child: SizedBox.expand(
                child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Favoritos', style: TextStyle(letterSpacing: 2)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Favorites()));
              },
            ),
            ListTile(
              leading: Icon(Icons.insert_drive_file),
              title: Text('Tarjetas creadas por ti',
                  style: TextStyle(letterSpacing: 2)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Created()));
              },
            ),
            ListTile(
              leading: Icon(Icons.cake),
              title: Text('Pills donde has publicado',
                  style: TextStyle(letterSpacing: 2)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Published()));
              },
            ),
          ],
        )))
      ],
    ));
  }
}
