import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './pages/card/card.dart';
import './pages/pill/pill.dart';
import './pages/search/search.dart';
// import './pages/user/user.dart';
import './pages/home/home.dart';
import './pages/library/library.dart';
import './pages/templateStore/templateStore.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    // statusBarBrightness: Brightness.light,
    // statusBarIconBrightness: Brightness.light,
    // systemNavigationBarColor: Color.fromARGB(255, 240, 240, 240),
    // systemNavigationBarIconBrightness: Brightness.light,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kanuki',
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Nunito',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'templateStore',
      routes: {
        '/': (BuildContext context) => Home(),
        'card': (BuildContext context) => CardPage(),
        'library': (BuildContext context) => Library(),
        'pill': (BuildContext context) => Pill(),
        'search': (BuildContext context) => Search(),
        'templateStore': (BuildContext context) => TemplateStore()
        // 'user': (BuildContext context) => Home(),
      },
    );
  }

}

// class MyHomePage extends StatelessWidget {

//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 240, 240, 240),
//       body: Library(),
//       bottomNavigationBar: BottomBar(),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: new FloatingActionButton(
//         child: Icon(Icons.add),
//         backgroundColor: Colors.blue,
//         onPressed: () => {},
//       ),
//     );
//   }

// }
