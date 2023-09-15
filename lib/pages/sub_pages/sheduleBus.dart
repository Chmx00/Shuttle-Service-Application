import 'package:flutter/material.dart';

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
                'Bus Schedule',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 54, 53, 53),
                ),
              ),
            ),
          ),
          // Container for Starting Point Dropdown
          Positioned(
            top: 150.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              alignment: Alignment.center, // Align to the right
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: DropdownButton<String>(
                value: startingPoint,
                onChanged: (String? newValue) {
                  setState(() {
                    startingPoint = newValue!;
                  });
                },
                items: <String>['Nugegoda', 'Maharagama', 'Kottawa', 'Padukka','NSBM']
                    .map<DropdownMenuItem<String>>((String value) {
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
          // Container for End Point Dropdown
          Positioned(
            top: 200.0,
            left: 20.0,
            right: 20.0,
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
                items: <String>['NSBM','Nugegoda', 'Maharagama', 'Kottawa', 'Padukka']
                    .map<DropdownMenuItem<String>>((String value) {
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
        ],
      ),
    );
  }
}
