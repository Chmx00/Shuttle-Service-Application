import 'package:flutter/material.dart';
import 'Time_table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BusSchedulePage(),
    );
  }
}

class BusSchedulePage extends StatefulWidget {
  @override
  _BusSchedulePageState createState() => _BusSchedulePageState();
}

class _BusSchedulePageState extends State<BusSchedulePage> {
  String startingPoint = 'Nugegoda'; // Default starting point
  String endPoint = 'NSBM'; // Default end point
  DateTime selectedDate = DateTime.now(); // Selected date, with a default value

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

  // Function to handle navigation to the TimeTable page
  void _navigateToTimeTable() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => TimeTablePage(), // Replace with your TimeTable page widget
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/bg.png', // Replace with your image asset path
              fit: BoxFit.cover,
            ),
          ),
          // Back Button
          Positioned(
            top: 72.0,
            left: 20.0,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 54, 53, 53),
                size: 30.0,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          // Text "Bus Schedule" at the Top Center
          Positioned(
            top: 80.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Find Schedule',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 54, 53, 53),
                ),
              ),
            ),
          ),
          Positioned(
            top: 90.0, // Adjust the top position as needed
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/Searching.png', // Replace with your image asset path
                width: 200.0, // Set the width as needed
                height: 200.0, // Set the height as needed
              ),
            ),
          ),
          // Row with Starting Point Text and End Point Dropdown
          Positioned(
            top: 320.0, // Adjust the top position as needed
            left: 40,
            right: 0,
            child: Center(
              child: Row(
                children: [
                  // First Column for "Starting Point" Text
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Starting Point:',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: const Color.fromARGB(255, 54, 53, 53),
                      ),
                    ),
                  ),
                  // Second Column for End Point Dropdown Container
                  
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20.0),
                    child: Container(
                    alignment: Alignment.center, // Align to the right
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: DropdownButton<String>(
                value: endPoint,
                onChanged: (String? newValue) {
                  setState(() {
                    endPoint = newValue!;
                  });
                },
                items: <String>[
                  'NSBM',
                  'Nugegoda',
                  'Maharagama',
                  'Kottawa',
                  'Padukka'
                  ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
              ),
             ),
            ),
           ),
           ],
          ),
         ),
        ),
       
        Positioned(
            top: 380.0, // Adjust the top position as needed
            left: 40,
            right: 0,
            child: Center(
              child: Row(
                children: [
                  // First Column for "Starting Point" Text
                  Expanded(
                    flex: 1,
                    child: Text(
                      'End Point:',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: const Color.fromARGB(255, 54, 53, 53),
                      ),
                    ),
                  ),
                  // Second Column for End Point Dropdown Container
                  
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20.0),
                    child: Container(
                    alignment: Alignment.center, // Align to the right
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: DropdownButton<String>(
                value: endPoint,
                onChanged: (String? newValue) {
                  setState(() {
                    endPoint = newValue!;
                  });
                },
                items: <String>[
                  'Nugegoda',
                  'Maharagama',
                  'Kottawa',
                  'Padukka',
                  'NSBM'
                  ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
              ),
             ),
            ),
           ),
           ],
          ),
         ),
        ),
                  // First Column for "Starting Point" Text
                  Positioned(
                  top: 440.0, // Adjust the top position as needed
                  left: 40,
                  right: 0,
                  child: Center(
                  child: Row(
                  children: [
                  // First Column for "Date" Text
                  Expanded(
                  flex: 1,
                  child: Text(
                  'Date:',
                   style: TextStyle(
                   fontSize: 16.0,
                   color: const Color.fromARGB(255, 54, 53, 53),
                   ),
                  ),
                 ),
        // Second Column for Date Picker and Calendar Icon
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Container(
              height: 45.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _selectDate(context),
                      child: Padding(
                        padding: EdgeInsets.only(left: 70.0),
                      child: Text(
                        "${selectedDate.toLocal()}".split(' ')[0],
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0), // Adjust the spacing as needed
                    child: GestureDetector(
                    onTap: () => _selectDate(context),
                    child: Image.asset(
                      'assets/calendar.png', // Replace with your calendar image asset path
                      width: 24.0, // Set the width as needed
                      height: 24.0, // Set the height as needed
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
          ),
         ),
          // Search Button
        Positioned(
            top: 550.0, // Adjust the top position as needed
            left: 40,
            right: 40,
            child:Container(
             width: 10.0, // Set the desired width
    height: 50.0, // Set the desired height 
            child: ElevatedButton(
              onPressed: _navigateToTimeTable, // Navigate to TimeTable page when pressed
              child: Text(
                'Search',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, 
                padding: EdgeInsets.all(0), // Remove padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Adjust border radius as needed
        ),// Change button color as needed
              ),
            ),
          ),
        ),    
       ],
      ),
      );
 }
}