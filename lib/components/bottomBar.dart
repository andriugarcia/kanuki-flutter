import 'package:flutter/material.dart';
import '../pages/home/home.dart';
import '../pages/search/search.dart';
import '../pages/library/library.dart';
import '../pages/notifications/notifications.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Inicio')),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Color.fromARGB(255, 0, 0, 0)),
            title: new Text('Buscar'),
          ),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.folder_open, color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Biblioteca')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,
                  color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Notificaciones'))
        ],
        onTap: (index) {
          Widget ret;
          ret = (index == 0) ? Home() : (index == 1) ? Search() : (index == 2) ? Library() : Notifications();
          Navigator.push(context, MaterialPageRoute(builder: (context) => ret));
        });
  }
}
