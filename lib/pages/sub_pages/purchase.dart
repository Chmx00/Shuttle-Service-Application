// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'payment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentPage(),
    );
  }
}

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String? selectedRoute = 'Select Your Route';
  String busName = ''; // Store the bus name here

  int seatCount = 0;
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  bool isCheckboxChecked = false; // Track the checkbox state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Payment.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content on top of the background image
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Center(
                    child: Text(
                      'Ticket\nPurchase',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 82, 81, 81),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/girl.png',
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.width * 0.3,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width * 2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05,
                            vertical: 20.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Select the Route',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 82, 167, 237),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: DropdownButton<String>(
                                  value: selectedRoute,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedRoute = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Select Your Route',
                                    'Matale - NSBM',
                                    'Kandy - NSBM',
                                    'Wennappuwa - NSBM',
                                    'Panadura - NSBM',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                              // Horizontal black line
                              Divider(
                                color: const Color.fromARGB(255, 93, 90, 90),
                                height: 25, // Adjust the height as needed
                                thickness: 1, // Adjust the thickness as needed
                                indent: 2, // Adjust the left indent as needed
                                endIndent:
                                    2, // Adjust the right indent as needed
                              ),
                              SizedBox(height: 0),
                              Text(
                                'Name of the bus',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 82, 167, 237),
                                ),
                              ),
                              SizedBox(height: 10),
                              // Text box for entering the bus
                              Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Name of the bus',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.normal,
                                      color:
                                          const Color.fromARGB(255, 51, 52, 52),
                                    ),
                                  ),
                                ),
                              ),
                              // Horizontal black line
                              Divider(
                                color: const Color.fromARGB(255, 93, 90, 90),
                                height: 25, // Adjust the height as needed
                                thickness: 1, // Adjust the thickness as needed
                                indent: 02, // Adjust the left indent as needed
                                endIndent:
                                    02, // Adjust the right indent as needed
                              ),
                              SizedBox(height: 0),
                              Text(
                                'Number of Seats',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 82, 167, 237),
                                ),
                              ),
                              SizedBox(height: 10),
                              // Row containing the seat number, up arrow, and down arrow buttons
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors
                                            .grey, // Define the border color
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Optional: Add rounded corners
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(
                                          8.0), // Optional: Add padding inside the box
                                      child: Text(
                                        '$seatCount',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 82, 167, 237),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors
                                            .grey, // Define the border color
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          30.0), // Optional: Add rounded corners
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.arrow_drop_down),
                                      onPressed: () {
                                        setState(() {
                                          if (seatCount > 0) {
                                            seatCount--; // Decrement the seat count, but ensure it's not negative
                                          }
                                        });
                                      },
                                      color: Colors
                                          .grey, // Set the icon color to gray
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors
                                            .grey, // Define the border color
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          30.0), // Optional: Add rounded corners
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.arrow_drop_up),
                                      onPressed: () {
                                        setState(() {
                                          seatCount++; // Increment the seat count
                                        });
                                      },
                                      color: Colors
                                          .grey, // Set the icon color to gray
                                    ),
                                  ),
                                ],
                              ),
                              // Horizontal black line
                              Divider(
                                color: const Color.fromARGB(255, 93, 90, 90),
                                height: 25, // Adjust the height as needed
                                thickness: 1, // Adjust the thickness as needed
                                indent: 02, // Adjust the left indent as needed
                                endIndent:
                                    02, // Adjust the right indent as needed
                              ),
                              Text(
                                'Select your Date',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 82, 167, 237),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Container(
                                      color: Color.fromARGB(255, 205, 246, 184),
                                      padding: EdgeInsets.all(18.0),
                                      width: 370,
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10.0),
                                            width: 278,
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 42, 205, 9),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '${DateFormat('dd MMMM').format(selectedDate)}', // Date and month name format
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                              width:
                                                  10), // Add spacing between date and calendar icon
                                          InkWell(
                                            onTap: () => _selectDate(context),
                                            child: Image.asset(
                                              'assets/calendar.png',
                                              width: 43.0,
                                              height: 43.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Add the checkbox and text in the same row and center them
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 0, left: 0, right: 16.0, bottom: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Checkbox(
                                      value: isCheckboxChecked,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isCheckboxChecked = newValue ?? false;
                                        });
                                      },
                                    ),
                                    Text(
                                      'Are you sure to purchase tickets',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Row containing the text and Buy Tickets button
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween, // Adjust alignment as needed
                                children: [
                                  // Container containing text
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 0,
                                        left: 15,
                                        right: 0,
                                        bottom:
                                            10), // Adjust the padding as needed
                                    child: Text(
                                      'Your Text Here',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  // Workable Buy Tickets button with width and height
                                  Container(
                                    width: 150.0, // Set the width
                                    height: 60.0, // Set the height
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (!isCheckboxChecked) {
                                          // Check if the checkbox is not checked
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text("Confirmation"),
                                                content: Text(
                                                    "Are you sure you want to buy tickets?"),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      // Place your code for purchasing tickets here
                                                      // This is where you can perform the actual purchase action

                                                      // Navigate to a new screen (replace `YourPurchaseScreen` with the actual screen you want to navigate to)
                                                      Navigator.of(context)
                                                          .pushReplacement(
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              PaymentPage(),
                                                        ),
                                                      );
                                                    },
                                                    child: Text("Yes"),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(16.0),
                                        primary: Colors.orange,
                                        onPrimary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Buy Tickets',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 50),
                              // Add a workable "Already Purchased" button below the "Buy Tickets" button
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 0, left: 60, right: 0, bottom: 0),
                                width: 300.0, // Set the width
                                height: 60.0, // Set the height
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Add your logic for buying tickets here
                                    // For example, you can show a confirmation dialog
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(16.0),
                                    primary: Colors
                                        .green, // Button color for "Already purchased"
                                    onPrimary: Colors
                                        .white, // Text color for "Already purchased"
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                  ),
                                  child: Text(
                                    'Already Purchased',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
