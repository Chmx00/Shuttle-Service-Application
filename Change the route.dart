import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
 Widget build (BuildContext context){
  return const MaterialApp(
    home: MyPage(),
  );
 }
}
class MyPage extends StatelessWidget{
  const MyPage({super.key});

  @override
  Widget build( BuildContext context){
    return Scaffold(
      body : Column (
      children:[
        // Arrow Button (Left Side Upper Conner)
        Positioned(
          top: 20,
          left: 20,
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
              // Handle button press
            },
            )
           ),
          ]
        ),
        // Change the Route (Upper Middle)
        const Positioned(
          child: Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Change the Route',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
        ),
        //Four Columns
        const Positioned(
          top: 100,
          left: 20,
          right: 20,
          bottom: 20,
          child: Column(
            children: [
              Row(
                children: [
                  Text ('Kottawa - NSBM',style: TextStyle (fontSize: 16)),
                  Spacer(),
                  Icon(Icons.directions_bus),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text ('Padukka - NSBM',style: TextStyle(fontSize: 16)),
                  Spacer(),
                  Icon(Icons.directions_bus),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text('Nugegoda - NSBM',style: TextStyle(fontSize: 16)),
                  Spacer(),
                  Icon(Icons.directions_bus),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text('Moragahena - NSBM',style: TextStyle(fontSize: 16)),
                  Spacer(),
                  Icon(Icons.directions_bus),
                ],
              ),
            ],
          ),
        ),
    );
  }
}

