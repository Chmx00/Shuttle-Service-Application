// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentPage(), // Set the PaymentPage as the home page
    );
  }
}

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/bg.png'), // Replace with your background image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content on top of the background image
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: Text(
                    'Ticket\n Purchase',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 81, 79, 79),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20), // Add some space below the text
                // Add your payment-related widgets here
                Image.asset(
                  'assets/girl.png', // Replace with your image asset
                  width: 180, // Set the width as per your design
                  height: 180, // Set the height as per your design
                  fit: BoxFit.contain, // Adjust the fit as needed
                ),
                SizedBox(
                    height:
                        20), // Add some space between the image and card details

                // Large container with rounded top corners for card payment details
                Container(
                  width: double.infinity,
                  height: 554.2,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Add your card payment details widgets here
                      SizedBox(height: 30),
                      Text(
                        'Select the Route',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 110, 178, 234),
                        ),
                      ),
                      DropdownButton<String>(
                        value:
                            'Select Your Route', // Replace with your selected value
                        onChanged: (String? newValue) {
                          // Implement dropdown value change logic
                        },
                        items: <String>[
                          'Select Your Route',
                          'Matale - NSBM',
                          'Kandy - NSBM',
                          'Wennappuwa - NSBM',
                          'Panadura - NSBM',

                          // Add your route options
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
