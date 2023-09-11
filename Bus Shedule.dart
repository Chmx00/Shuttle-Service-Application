import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: MyPage(),
    );
  }
}
class MyPage extends StatelessWidget{
  const MyPage({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Coloumn (
      children: [
        // Background Picture with Infinite Width and Height
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background_image.jpg'),//Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
        ),
        //Arrow Button (Left Side Upper Corner)
        Positioned(
          top: 20,
          left: 20,
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
              // Handle button press
            },
          ),
        ),
        // Caption (Upper Middle)
        const Positioned(
          top: 40,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              'Bus Shedule',
              style: TextStyle (fontSize:24, color: Colors.black),
            ),
          ),
        ),
        // Five Columns
        Positioned(
          top: 100, // Adjust the top position as needed
          left: 20,  // Adjust the left position as needed
          right: 20, // Adjust the right position as needed
          bottom: 20, // Adjust the bottom position as needed
          child: Column (
            children:[
            buildColumnItem ('07.00','Monday','2023.06.06','Center','Right'),
            const SizedBox (height: 20),
            buildColumnItem ('07.15','Monday','2023.06.06','Center','Right'),
            const SizedBox (height: 20),
            buildColumnItem ('07.30','Monday','2023.06.06','Center','Right'),
            const SizedBox (height: 20),
            buildColumnItem ('07.45','Monday','2023.06.06','Center','Right'),
            ],
           ),
        ), 
    ] ));
  }
  
// Helper funtion to create a column item with specifiedcontent
Widget buildColumnItem (
  String time, String date , String day, String centerText, String rightText){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(time, style: const TextStyle(fontSize: 16)),
        Text (date, style: const TextStyle(fontSize: 16)),
        Text (day, style:  const TextStyle (fontSize: 16)),
       ], );      
}  
}
