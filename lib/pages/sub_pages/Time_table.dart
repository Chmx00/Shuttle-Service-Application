import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimeTablePage(),
    );
  }
}

//fcvhgvbj
class TimeTablePage extends StatelessWidget {
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
                color: Color.fromARGB(255, 29, 29, 29),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          // Text "Change Your Route" (Two Rows)
          // Text "Change Your Route" with Image after
          Positioned(
            top: 100.0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bus Schedule',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06, // Responsive font size
                    color: Color.fromARGB(255, 42, 41, 41),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Add some spacing between text and image
                Image.asset(
                  'assets/BS.png', // Image asset path
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.5,
                  fit: BoxFit.contain, // Set the image height
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
              height: 600.0,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // Set your desired color
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0, top: 16.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Text',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 61, 167, 253),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 370.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0), // Border width
                          ),
                          color: Color.fromARGB(255, 159, 206, 244),
                        ),
                        child: Row(
                          children: [
                            // First Column (Two Rows)
                            Expanded(
                              flex:
                                  2, // Adjust the flex as needed to control column widths
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // First Row (Time)
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.0), // Add left padding
                                    child: Text(
                                      '9:00 AM', // Your time text here
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 246, 138, 29),
                                      ),
                                    ),
                                  ),
                                  // Second Row (Date)
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.0), // Add left padding
                                    child: Text(
                                      'Mon, 25', // Your date text here
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 251, 250, 250),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Vertical Line (Adjust the height as needed)
                            Container(
                              width: 1.0, // Width of the vertical line
                              height:
                                  100.0, // Height of the vertical line (adjust as needed)
                              color: Color.fromARGB(255, 250, 250,
                                  250), // Color of the vertical line
                            ),
                            // Second Column (Text)
                            Expanded(
                              flex: 5,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0,
                                    top:
                                        35.0), // Adjust the flex as needed to control column widths
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // First Text Row
                                    Padding(
                                      padding: EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        '6.45 A.M', // Your date text here
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 248, 247, 247),
                                        ),
                                      ),
                                    ),
                                    // Second Text Row
                                    Padding(
                                      padding: EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        'NUGEGODA --> NSBM', // Your date text here
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 248, 246, 246),
                                        ),
                                      ),
                                    ),
                                    // Third Text Row
                                    Row(
                                      children: [
                                        // First Sub-Column (Text and Time)
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'KOTTAWA', // Your text here
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                              Text(
                                                '07:10 AM', // Time in the first sub-column
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Second Column (Text and Horizontal Line)
                                        // Second Column (Text and Horizontal Line)
                                        Expanded(
                                          flex:
                                              2, // Adjust the flex value to make the column narrower
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // Text
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left:
                                                        10.0), // Add left padding
                                              ),
                                              // Horizontal Line (Divider)
                                              Divider(
                                                color: Color.fromARGB(
                                                    255,
                                                    118,
                                                    110,
                                                    110), // Color of the line
                                                thickness:
                                                    1.0, // Thickness of the line
                                                height:
                                                    1.0, // Height of the line
                                                indent:
                                                    10.0, // Indent from the left
                                                endIndent:
                                                    10.0, // Indent from the right
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Third Sub-Column (Text and Time)
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'NSBM', // Your text here
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                              Text(
                                                '07:50 AM', // Time in the third sub-column
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Third Column (Image)
                            Expanded(
                              flex:
                                  2, // Adjust the flex as needed to control column widths
                              child: Center(
                                child: Image.asset(
                                  'assets/Bus.png', // Image asset path
                                  width:
                                      80.0, // Adjust the image width as needed
                                  height:
                                      80.0, // Adjust the image height as needed
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 370.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0), // Border width
                          ),
                          color: Color.fromARGB(255, 159, 206, 244),
                        ),
                        child: Row(
                          children: [
                            // First Column (Two Rows)
                            Expanded(
                              flex:
                                  2, // Adjust the flex as needed to control column widths
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // First Row (Time)
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.0), // Add left padding
                                    child: Text(
                                      '9:00 AM', // Your time text here
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 246, 138, 29),
                                      ),
                                    ),
                                  ),
                                  // Second Row (Date)
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.0), // Add left padding
                                    child: Text(
                                      'Mon, 25', // Your date text here
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 251, 250, 250),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Vertical Line (Adjust the height as needed)
                            Container(
                              width: 1.0, // Width of the vertical line
                              height:
                                  100.0, // Height of the vertical line (adjust as needed)
                              color: Color.fromARGB(255, 250, 250,
                                  250), // Color of the vertical line
                            ),
                            // Second Column (Text)
                            Expanded(
                              flex: 5,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0,
                                    top:
                                        35.0), // Adjust the flex as needed to control column widths
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // First Text Row
                                    Padding(
                                      padding: EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        '6.45 A.M', // Your date text here
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 248, 247, 247),
                                        ),
                                      ),
                                    ),
                                    // Second Text Row
                                    Padding(
                                      padding: EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        'NUGEGODA --> NSBM', // Your date text here
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 248, 246, 246),
                                        ),
                                      ),
                                    ),
                                    // Third Text Row
                                    Row(
                                      children: [
                                        // First Sub-Column (Text and Time)
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'KOTTAWA', // Your text here
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                              Text(
                                                '07:10 AM', // Time in the first sub-column
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Second Column (Text and Horizontal Line)
                                        // Second Column (Text and Horizontal Line)
                                        Expanded(
                                          flex:
                                              2, // Adjust the flex value to make the column narrower
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // Text
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left:
                                                        10.0), // Add left padding
                                              ),
                                              // Horizontal Line (Divider)
                                              Divider(
                                                color: Color.fromARGB(
                                                    255,
                                                    118,
                                                    110,
                                                    110), // Color of the line
                                                thickness:
                                                    1.0, // Thickness of the line
                                                height:
                                                    1.0, // Height of the line
                                                indent:
                                                    10.0, // Indent from the left
                                                endIndent:
                                                    10.0, // Indent from the right
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Third Sub-Column (Text and Time)
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'NSBM', // Your text here
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                              Text(
                                                '07:50 AM', // Time in the third sub-column
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Third Column (Image)
                            Expanded(
                              flex:
                                  2, // Adjust the flex as needed to control column widths
                              child: Center(
                                child: Image.asset(
                                  'assets/Bus.png', // Image asset path
                                  width:
                                      80.0, // Adjust the image width as needed
                                  height:
                                      80.0, // Adjust the image height as needed
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 370.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0), // Border width
                          ),
                          color: Color.fromARGB(255, 159, 206, 244),
                        ),
                        child: Row(
                          children: [
                            // First Column (Two Rows)
                            Expanded(
                              flex:
                                  2, // Adjust the flex as needed to control column widths
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // First Row (Time)
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.0), // Add left padding
                                    child: Text(
                                      '9:00 AM', // Your time text here
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 246, 138, 29),
                                      ),
                                    ),
                                  ),
                                  // Second Row (Date)
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.0), // Add left padding
                                    child: Text(
                                      'Mon, 25', // Your date text here
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 251, 250, 250),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Vertical Line (Adjust the height as needed)
                            Container(
                              width: 1.0, // Width of the vertical line
                              height:
                                  100.0, // Height of the vertical line (adjust as needed)
                              color: Color.fromARGB(255, 250, 250,
                                  250), // Color of the vertical line
                            ),
                            // Second Column (Text)
                            Expanded(
                              flex: 5,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0,
                                    top:
                                        35.0), // Adjust the flex as needed to control column widths
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // First Text Row
                                    Padding(
                                      padding: EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        '6.45 A.M', // Your date text here
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 248, 247, 247),
                                        ),
                                      ),
                                    ),
                                    // Second Text Row
                                    Padding(
                                      padding: EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        'NUGEGODA --> NSBM', // Your date text here
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 248, 246, 246),
                                        ),
                                      ),
                                    ),
                                    // Third Text Row
                                    Row(
                                      children: [
                                        // First Sub-Column (Text and Time)
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'KOTTAWA', // Your text here
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                              Text(
                                                '07:10 AM', // Time in the first sub-column
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Second Column (Text and Horizontal Line)
                                        // Second Column (Text and Horizontal Line)
                                        Expanded(
                                          flex:
                                              2, // Adjust the flex value to make the column narrower
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // Text
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left:
                                                        10.0), // Add left padding
                                              ),
                                              // Horizontal Line (Divider)
                                              Divider(
                                                color: Color.fromARGB(
                                                    255,
                                                    118,
                                                    110,
                                                    110), // Color of the line
                                                thickness:
                                                    1.0, // Thickness of the line
                                                height:
                                                    1.0, // Height of the line
                                                indent:
                                                    10.0, // Indent from the left
                                                endIndent:
                                                    10.0, // Indent from the right
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Third Sub-Column (Text and Time)
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'NSBM', // Your text here
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                              Text(
                                                '07:50 AM', // Time in the third sub-column
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Third Column (Image)
                            Expanded(
                              flex:
                                  2, // Adjust the flex as needed to control column widths
                              child: Center(
                                child: Image.asset(
                                  'assets/Bus.png', // Image asset path
                                  width:
                                      80.0, // Adjust the image width as needed
                                  height:
                                      80.0, // Adjust the image height as needed
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 370.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0), // Border width
                          ),
                          color: Color.fromARGB(255, 159, 206, 244),
                        ),
                        child: Row(
                          children: [
                            // First Column (Two Rows)
                            Expanded(
                              flex:
                                  2, // Adjust the flex as needed to control column widths
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // First Row (Time)
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.0), // Add left padding
                                    child: Text(
                                      '9:00 AM', // Your time text here
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 246, 138, 29),
                                      ),
                                    ),
                                  ),
                                  // Second Row (Date)
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.0), // Add left padding
                                    child: Text(
                                      'Mon, 25', // Your date text here
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 251, 250, 250),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Vertical Line (Adjust the height as needed)
                            Container(
                              width: 1.0, // Width of the vertical line
                              height:
                                  100.0, // Height of the vertical line (adjust as needed)
                              color: Color.fromARGB(255, 250, 250,
                                  250), // Color of the vertical line
                            ),
                            // Second Column (Text)
                            Expanded(
                              flex: 5,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0,
                                    top:
                                        35.0), // Adjust the flex as needed to control column widths
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // First Text Row
                                    Padding(
                                      padding: EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        '6.45 A.M', // Your date text here
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 248, 247, 247),
                                        ),
                                      ),
                                    ),
                                    // Second Text Row
                                    Padding(
                                      padding: EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        'NUGEGODA --> NSBM', // Your date text here
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 248, 246, 246),
                                        ),
                                      ),
                                    ),
                                    // Third Text Row
                                    Row(
                                      children: [
                                        // First Sub-Column (Text and Time)
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'KOTTAWA', // Your text here
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                              Text(
                                                '07:10 AM', // Time in the first sub-column
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Second Column (Text and Horizontal Line)
                                        // Second Column (Text and Horizontal Line)
                                        Expanded(
                                          flex:
                                              2, // Adjust the flex value to make the column narrower
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // Text
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left:
                                                        10.0), // Add left padding
                                              ),
                                              // Horizontal Line (Divider)
                                              Divider(
                                                color: Color.fromARGB(
                                                    255,
                                                    118,
                                                    110,
                                                    110), // Color of the line
                                                thickness:
                                                    1.0, // Thickness of the line
                                                height:
                                                    1.0, // Height of the line
                                                indent:
                                                    10.0, // Indent from the left
                                                endIndent:
                                                    10.0, // Indent from the right
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Third Sub-Column (Text and Time)
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'NSBM', // Your text here
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                              Text(
                                                '07:50 AM', // Time in the third sub-column
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Third Column (Image)
                            Expanded(
                              flex:
                                  2, // Adjust the flex as needed to control column widths
                              child: Center(
                                child: Image.asset(
                                  'assets/Bus.png', // Image asset path
                                  width:
                                      80.0, // Adjust the image width as needed
                                  height:
                                      80.0, // Adjust the image height as needed
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 370.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0), // Border width
                          ),
                          color: Color.fromARGB(255, 159, 206, 244),
                        ),
                        child: Row(
                          children: [
                            // First Column (Two Rows)
                            Expanded(
                              flex:
                                  2, // Adjust the flex as needed to control column widths
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // First Row (Time)
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.0), // Add left padding
                                    child: Text(
                                      '9:00 AM', // Your time text here
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 246, 138, 29),
                                      ),
                                    ),
                                  ),
                                  // Second Row (Date)
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.0), // Add left padding
                                    child: Text(
                                      'Mon, 25', // Your date text here
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 251, 250, 250),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Vertical Line (Adjust the height as needed)
                            Container(
                              width: 1.0, // Width of the vertical line
                              height:
                                  100.0, // Height of the vertical line (adjust as needed)
                              color: Color.fromARGB(255, 250, 250,
                                  250), // Color of the vertical line
                            ),
                            // Second Column (Text)
                            Expanded(
                              flex: 5,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0,
                                    top:
                                        35.0), // Adjust the flex as needed to control column widths
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // First Text Row
                                    Padding(
                                      padding: EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        '6.45 A.M', // Your date text here
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 248, 247, 247),
                                        ),
                                      ),
                                    ),
                                    // Second Text Row
                                    Padding(
                                      padding: EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        'NUGEGODA --> NSBM', // Your date text here
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 248, 246, 246),
                                        ),
                                      ),
                                    ),
                                    // Third Text Row
                                    Row(
                                      children: [
                                        // First Sub-Column (Text and Time)
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'KOTTAWA', // Your text here
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                              Text(
                                                '07:10 AM', // Time in the first sub-column
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Second Column (Text and Horizontal Line)
                                        // Second Column (Text and Horizontal Line)
                                        Expanded(
                                          flex:
                                              2, // Adjust the flex value to make the column narrower
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // Text
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left:
                                                        10.0), // Add left padding
                                              ),
                                              // Horizontal Line (Divider)
                                              Divider(
                                                color: Color.fromARGB(
                                                    255,
                                                    118,
                                                    110,
                                                    110), // Color of the line
                                                thickness:
                                                    1.0, // Thickness of the line
                                                height:
                                                    1.0, // Height of the line
                                                indent:
                                                    10.0, // Indent from the left
                                                endIndent:
                                                    10.0, // Indent from the right
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Third Sub-Column (Text and Time)
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'NSBM', // Your text here
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                              Text(
                                                '07:50 AM', // Time in the third sub-column
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 118, 110, 110),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Third Column (Image)
                            Expanded(
                              flex:
                                  2, // Adjust the flex as needed to control column widths
                              child: Center(
                                child: Image.asset(
                                  'assets/Bus.png', // Image asset path
                                  width:
                                      80.0, // Adjust the image width as needed
                                  height:
                                      80.0, // Adjust the image height as needed
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
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
