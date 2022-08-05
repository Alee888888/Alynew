import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;


class Mylist2 extends StatefulWidget {
  Mylist2({Key? key}) : super(key: key);

  @override
  State<Mylist2> createState() => _Mylist2State();
}

class _Mylist2State extends State<Mylist2> {
  var pets = [];
  bool isloading = true;
 void FetchApi() async{
    var Url = Uri.https("60f9bc967ae59c0017165f11.mockapi.io","/pets");//60f9bc967ae59c0017165f11.mockapi.io/pets

    var response = await http.get(Url);
    if(response.statusCode == 200){
      var  items = convert.jsonDecode(
        response.body
        );
        setState(() {
          pets=items;
          isloading = false;
          print(pets);
        });
    };
 }
 
  @override
  Widget build(BuildContext context) {
    FetchApi();
    
    return Material(
      child: ListView.builder(
        itemCount: pets.length,
       itemBuilder:(BuildContext context,int index ){

        if(isloading){
          return Material(child: Center(child: CircularProgressIndicator(backgroundColor: Colors.blue,),),);
        }

        return Container(
       
            color: Colors.white,
            height: 100,
            padding: EdgeInsets.all(5),
            
            margin: EdgeInsets.only(bottom: 10),

            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: CircleAvatar(backgroundImage: NetworkImage( pets[index]['avatar']), 
                  

                  ),
                ),
                Expanded(
                  
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                    Text(
                      pets[index]['name'],
                    style: TextStyle(
                      fontSize: 20
                      ),
                    ),
                    Text(pets[index]['type'],
                    style: TextStyle(
                      fontSize: 10
                      ),
                    )
                  ]),
                ),
                Expanded(
                  flex: 2,
                  child: IconButton( icon: Icon(
                    Icons.phone,
                    color:Colors.amber ,
                  ),
                  onPressed: (null),),
                )
              ],
            ),
        );
        
       },
       ),
    );
  }
}