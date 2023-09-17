import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: timeTablePage(),
    );
  }
}

class timeTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
          // Text "Change Your Route" with Image after
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
                    color: const Color.fromARGB(255, 42, 41, 41),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Route',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06, // Responsive font size
                    color: Color.fromARGB(255, 42, 41, 41),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                    height: 8.0), // Add some spacing between text and image
                Image.asset(
                  'assets/sbus.png', // Image asset path
                  width: 200.0, // Set the image width
                  height: 200.0, // Set the image height
                  // You can adjust the width and height as needed
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
            child: SizedBox(
              height: 570.0,
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
                    SizedBox(height: 20),
                    SizedBox(
                      width: 320.0,
                      height: 90.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                          child: Text(
                            'Kottawa - NSBM', // Your text here
                            style: TextStyle(
                              color: Colors.white, // Set the text color
                              fontSize: 16.0, // Set the text size
                              fontWeight:
                                  FontWeight.bold, // Set the text weight
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 320.0,
                      height: 90.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                          child: Text(
                            'Padukka - NSBM', // Your text here
                            style: TextStyle(
                              color: Colors.white, // Set the text color
                              fontSize: 16.0, // Set the text size
                              fontWeight:
                                  FontWeight.bold, // Set the text weight
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 320.0,
                      height: 90.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                          child: Text(
                            'Nugegoda - NSBM', // Your text here
                            style: TextStyle(
                              color: Colors.white, // Set the text color
                              fontSize: 16.0, // Set the text size
                              fontWeight:
                                  FontWeight.bold, // Set the text weight
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 320.0,
                      height: 90.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                          child: Text(
                            'Moragahena - NSBM', // Your text here
                            style: TextStyle(
                              color: Colors.white, // Set the text color
                              fontSize: 16.0, // Set the text size
                              fontWeight:
                                  FontWeight.bold, // Set the text weight
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 320.0,
                      height: 90.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                          child: Text(
                            'Moragahena - NSBM', // Your text here
                            style: TextStyle(
                              color: Colors.white, // Set the text color
                              fontSize: 16.0, // Set the text size
                              fontWeight:
                                  FontWeight.bold, // Set the text weight
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
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
