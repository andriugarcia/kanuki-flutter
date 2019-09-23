import 'package:flutter/material.dart';

class TemplateStore extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: false,
        children: [
          Row(
            children: [
              IconButton(
                color: Colors.black,
                icon: Icon(Icons.arrow_back),
                onPressed: () => {},
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    hintText: 'Buscar'),
              ),
            ],
          ),
          Text("Últimos usados", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          NestedScrollView(
            scrollDirection: Axis.horizontal,
            body: Row(children: [

              Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFFED5261),
                      borderRadius: BorderRadius.circular(12)
                    ),
                  )
                ],
              )
            ],) 
            
          )
        ],
      )
    );
  }
}