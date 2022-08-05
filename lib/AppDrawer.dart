import 'package:flutter/material.dart';
import 'package:shopping/Login.dart';
import 'package:shopping/Welcom.dart';
import 'package:shopping/product.dart';
import 'package:shopping/profile.dart';

class AppDrawer extends StatelessWidget {
  // const AppDrawer({Key? key}) : super(key: key);
//

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0.7),
        children: [
          DrawerHeader(child: Text('Menu')),
          ListTile(
            title: Text("Main"),
            onTap: () { Navigator.push ( context, MaterialPageRoute (builder: (context) => welcome ())); },
          ),
          ListTile(
            title: Text("Profile"),
            onTap: () { Navigator.push ( context, MaterialPageRoute (builder: (context) => profile() )); },
          ),
          ListTile(
            title: Text("Product"),
            onTap: () { Navigator.push ( context, MaterialPageRoute (builder: (context) => product() )); },
          ),
          ListTile(
            title: Text("Signout"),
             onTap: () { Navigator.push ( context, MaterialPageRoute (builder: (context) =>Login())); },
          ),
        ],
      ),
    );
  }
}
