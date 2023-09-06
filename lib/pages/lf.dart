import 'package:flutter/material.dart';

class LostAndFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading:IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {  },
          ),
          title: Text("Lost & Founds", style: TextStyle(
            color: Color.fromRGBO(68, 67, 67, 1),
            fontSize: 23,
            fontWeight: FontWeight.bold
          ),),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
  
  }
}
