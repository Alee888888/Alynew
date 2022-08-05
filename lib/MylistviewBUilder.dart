import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class MylistviewBuilder extends StatelessWidget {
  // const MylistviewBuilder({Key? key}) : super(key: key);
// List pets = <List <String>>[
//  [ "Lily","Dog"],
//  ["Garfield","Cat"],
//  ["Bob","fish"],
//  ["tom","Pig"],
//  ["toui","toto"]
// ] ;
 var pets = [];
 void FetchApi() async{
    var Url = Uri.https("60f9bc967ae59c0017165f11.mockapi.io","/pets");//60f9bc967ae59c0017165f11.mockapi.io/pets

    var response = await http.get(Url);

    print(response);
    print(response.statusCode);
    print(response.body);
 }
 
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemCount: pets.length,
       itemBuilder:(BuildContext context,int index ){
        return Container(
       
            color: Colors.white,
            height: 100,
            padding: EdgeInsets.all(5),
            
            margin: EdgeInsets.only(bottom: 10),

            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: CircleAvatar(backgroundColor: Color.fromARGB(255, 101, 54, 244),
                  child: Text (
                    pets[index]['avatar'],
                  ),

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