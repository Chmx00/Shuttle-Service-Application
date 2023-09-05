import 'package:flutter/material.dart';

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/Payment.png', // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
          // Back Button
          Positioned(
            top: 20.0,
            left: 20.0,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          // Text "Change Your Route" (Two Rows)
          Positioned(
            top: 80.0,
            left: 0,
            right: 0, // Adjust the left position as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment:
                  MainAxisAlignment.center, // Align to center vertically
              children: [
                Text(
                  'Change Your',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: const Color.fromARGB(255, 150, 149, 149),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Route',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: const Color.fromARGB(255, 150, 149, 149),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Content

          // Large Container at the Bottom with Rounded Top Corners
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white, // Set your desired color
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    spreadRadius: 8,
                    blurRadius: 10,
                    offset: Offset(
                        0, 3), // Offset in the positive direction of y-axis
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Your Content Here',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: RoutePage()));
}
