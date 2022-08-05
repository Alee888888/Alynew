import 'package:flutter/material.dart';

class MYLISTVIEW extends StatelessWidget {
  // const MYLISTVIEW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child:ListView(
        children:<Widget> [
          Container(
            child: Text("Alee panyarnouvong"),
            color: Colors.red[500],
            height: 100,
            padding: EdgeInsets.all(40),
            margin: EdgeInsets.only(bottom: 20),
          ),
           Container(
            child: Text("Alee panyarnouvong"),
            color: Color.fromARGB(255, 225, 238, 153),
            height: 100,
            padding: EdgeInsets.all(40),
            margin: EdgeInsets.only(bottom: 20),
          ),
           Container(
            child: Text("Alee panyarnouvong"),
            color: Color.fromARGB(255, 174, 226, 240),
            height: 100,
            padding: EdgeInsets.all(40),
            margin: EdgeInsets.only(bottom: 20),
          ),
           Container(
            child: Text("Alee panyarnouvong"),
            color: Color.fromARGB(255, 237, 191, 217),
            height: 100,
            padding: EdgeInsets.all(40),
            margin: EdgeInsets.only(bottom: 20),
          ),
         



        ],
      ),
      );
    
  }
}