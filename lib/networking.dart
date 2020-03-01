 import 'package:flutter/material.dart';
 import 'package:http/http.dart' as http;
 import 'dart:convert';


class networking extends StatefulWidget {
  

  @override
  _networkingState createState() => _networkingState();
}

class _networkingState extends State<networking> {
  
  Future getData() async {
    var url= "https://jsonplaceholder.typicode.com/posts/1";
    var response= await http.get(url);
    print(response.body);
    var data=json.decode(response.body);
    print(data);
  }

  
  @override
  Widget build(BuildContext context) {
    getData();
    return Container(
      child:Text("hello")
    );
  }
}



