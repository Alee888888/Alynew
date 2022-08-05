import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Airiline extends StatelessWidget {
  // const name({Key? key}) : super(key: key);
  void loadAirline() async{
    var Url = Uri.https("api.instantwebtools.net","/v1/airlines/8");

    var response = await http.get(Url);

    print(response);
    print(response.statusCode);
    print(response.body);
  }


  @override
  Widget build(BuildContext context) {
    loadAirline();
    return Container();
  }
}