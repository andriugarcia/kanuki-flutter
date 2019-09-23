import 'package:flutter/material.dart';
import './components/bottomBar.dart';

class Wrapper extends StatelessWidget {
  Wrapper({this.child});
  final Widget child;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      body: SafeArea(child: child),
      bottomNavigationBar: BottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF4F9CD1),
        onPressed: () => {
          scaffoldKey.currentState.showBottomSheet((context) => Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child:
              Row(
              children: [
                Expanded(
                  child: Padding(      
                  padding: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 4),            
                  child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Pills", style: TextStyle(fontSize: 24)),
                      Text("Crea una comunidad por temática")
                    ],
                  ),
                  ) 
                ))
                ),
                Expanded(
                  child: Padding(      
                  padding: EdgeInsets.only(top: 8, bottom: 8, left: 4, right: 8),            
                  child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Pills", style: TextStyle(fontSize: 24)),
                      Text("Crea una comunidad por temática")
                    ],
                  ),
                  ) 
                ))
                ),
              ],
            ),
            
          ))
        },
      ),
    );
  }
}