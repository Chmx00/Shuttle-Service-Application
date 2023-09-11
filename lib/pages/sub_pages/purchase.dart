import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

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
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: column(
          children: [
            // Background Image
            Container(
              height: screenHeight,
              width: screenWidth,
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
                  SizedBox(height: screenHeight * 0.1),
                  Center(
                    child: Text(
                      'Ticket\nPurchase',
                      style: TextStyle(
                        fontSize: screenHeight * 0.03,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 82, 81, 81),
                      ),
                      textAlign: TextAlign.center,
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
                              width: screenWidth * 0.4,
                              height: screenHeight * 0.2,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Container(
                            width: double.infinity,
                            height: screenHeight * 2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(screenHeight * 0.05),
                                topRight: Radius.circular(screenHeight * 0.05),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.05,
                              vertical: screenHeight * 0.02,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Select the Route',
                                  style: TextStyle(
                                    fontSize: screenHeight * 0.021,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 82, 167, 237),
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.03),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(
                                        screenHeight * 0.01),
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
                                  height: screenHeight * 0.03,
                                  thickness: 1,
                                  indent: screenWidth * 0.01,
                                  endIndent: screenWidth * 0.01,
                                ),
                                SizedBox(height: screenHeight * 0.001),
                                Text(
                                  'Name of the bus',
                                  style: TextStyle(
                                    fontSize: screenHeight * 0.021,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 82, 167, 237),
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                // Text box for entering the bus
                                Container(
                                  width: double.infinity,
                                  height: screenHeight * 0.06,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(
                                        screenHeight * 0.01),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(screenHeight * 0.015),
                                    child: Text(
                                      'Name of the bus',
                                      style: TextStyle(
                                        fontSize: screenHeight * 0.0192,
                                        fontWeight: FontWeight.normal,
                                        color: const Color.fromARGB(
                                            255, 51, 52, 52),
                                      ),
                                    ),
                                  ),
                                ),
                                // Horizontal black line
                                Divider(
                                  color: const Color.fromARGB(255, 93, 90, 90),
                                  height: screenHeight * 0.03,
                                  thickness: 1,
                                  indent: screenWidth * 0.01,
                                  endIndent: screenWidth * 0.01,
                                ),
                                SizedBox(height: screenHeight * 0.001),
                                Text(
                                  'Number of Seats',
                                  style: TextStyle(
                                    fontSize: screenHeight * 0.021,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 82, 167, 237),
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                // Row containing the seat number, up arrow, and down arrow buttons
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            screenHeight * 0.01),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            screenHeight * 0.010),
                                        child: Text(
                                          '$seatCount',
                                          style: TextStyle(
                                            fontSize: screenHeight * 0.021,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 82, 167, 237),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: screenHeight * 0.02),
                                    Container(
                                      width: screenHeight * 0.05,
                                      height: screenHeight * 0.05,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            screenHeight * 0.03),
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
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(width: screenHeight * 0.01),
                                    Container(
                                      width: screenHeight * 0.05,
                                      height: screenHeight * 0.05,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            screenHeight * 0.03),
                                      ),
                                      child: IconButton(
                                        icon: Icon(Icons.arrow_drop_up),
                                        onPressed: () {
                                          setState(() {
                                            if (seatCount < 54) {
                                              // Check if seatCount is less than 54
                                              seatCount++; // Increment the seat count
                                            }
                                          });
                                        },
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                // Horizontal black line
                                Divider(
                                  color: const Color.fromARGB(255, 93, 90, 90),
                                  height: screenHeight * 0.03,
                                  thickness: 1,
                                  indent: screenWidth * 0.01,
                                  endIndent: screenWidth * 0.01,
                                ),
                                Text(
                                  'Select your Date',
                                  style: TextStyle(
                                    fontSize: screenHeight * 0.021,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 82, 167, 237),
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Container(
                                        color:
                                            Color.fromARGB(255, 205, 246, 184),
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                'assets/calendar.gif',
                                                width: 45.0,
                                                height: 45.0,
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
                                  padding: EdgeInsets.only(
                                      top: screenHeight * 0.01,
                                      left: screenHeight * 0.0,
                                      right: screenHeight * 0.016,
                                      bottom: screenHeight * 0.016),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Checkbox(
                                        value: isCheckboxChecked,
                                        onChanged: (bool? newValue) {
                                          setState(() {
                                            isCheckboxChecked =
                                                newValue ?? false;
                                          });
                                        },
                                      ),
                                      Text(
                                        'Are you sure to purchase tickets',
                                        style: TextStyle(
                                          fontSize: screenHeight * 0.014,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Row containing the text and Buy Tickets button
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Container containing text
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: screenHeight * 0.0,
                                          left: screenHeight * 0.015,
                                          right: screenHeight * 0.0,
                                          bottom: screenHeight * 0.01),
                                      child: Text(
                                        'Your Text Here',
                                        style: TextStyle(
                                          fontSize: screenHeight * 0.018,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    // Workable Buy Tickets button with width and height
                                    Container(
                                      width: screenHeight * 0.15,
                                      height: screenHeight * 0.06,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Add your logic for buying tickets here
                                          // For example, you can show a confirmation dialog
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
                                                      Navigator.of(context)
                                                          .pop(); // Close the dialog
                                                    },
                                                    child: Text("Cancel"),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      // Place your code for purchasing tickets here
                                                      // This is where you can perform the actual purchase action
                                                      Navigator.of(context)
                                                          .pop(); // Close the dialog
                                                    },
                                                    child: Text("Buy"),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.all(
                                              screenHeight * 0.016),
                                          primary: Colors.orange,
                                          onPrimary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                screenHeight * 0.04),
                                          ),
                                        ),
                                        child: Text(
                                          'Buy Tickets',
                                          style: TextStyle(
                                            fontSize: screenHeight * 0.018,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.05),
                                // Add a workable "Already Purchased" button below the "Buy Tickets" button
                                Container(
                                  padding: EdgeInsets.only(
                                      top: screenHeight * 0.0,
                                      left: screenHeight * 0.08,
                                      right: screenHeight * 0.0,
                                      bottom: screenHeight * 0.0),
                                  width: screenHeight * 0.3,
                                  height: screenHeight * 0.06,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your logic for handling "Already purchased" here
                                      // For example, you can show a message or navigate to a different screen
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text("Already Purchased"),
                                            content: Text(
                                                "You have already purchased tickets."),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop(); // Close the dialog
                                                },
                                                child: Text("OK"),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding:
                                          EdgeInsets.all(screenHeight * 0.016),
                                      primary: Colors.green,
                                      onPrimary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            screenHeight * 0.04),
                                      ),
                                    ),
                                    child: Text(
                                      'Already Purchased',
                                      style: TextStyle(
                                        fontSize: screenHeight * 0.02,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
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
      ),
    );
  }
}
