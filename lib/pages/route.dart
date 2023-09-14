import 'package:flutter/material.dart';

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/Payment.png',
              fit: BoxFit.cover,
            ),
          ),
          // Back Button
          Positioned(
            top: 30.0,
            left: 20.0,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 96, 96, 96),
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
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Change Your',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06, // Responsive font size
                    color: const Color.fromARGB(255, 150, 149, 149),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Route',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06, // Responsive font size
                    color: const Color.fromARGB(255, 150, 149, 149),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
                Image.asset(
                  'assets/School bus.png',
                  width: 180,
                  height: 180,
                  fit: BoxFit.contain,
                ),
          // Content
          // Large Container at the Bottom with Rounded Top Corners
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 450.0,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Set your desired color
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 8,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 300.0,
                      height: 60.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300.0,
                      height: 60.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300.0,
                      height: 60.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300.0,
                      height: 60.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
