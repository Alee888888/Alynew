import 'package:flutter/material.dart';
import 'package:shopping/AppDrawer.dart';

class product extends StatelessWidget {
  // const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
  

      appBar: AppBar(title: Text("product"),
      ),
      body: Center(child: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          },
           child: Text("Back")
           )
         ],
        ),
       ),
    drawer: Drawer(
    child: AppDrawer()// Populate the Drawer in the next step.
  ),
    );
  }
}