// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:async';
import 'pages/contact.dart';
import 'pages/lf.dart';
import 'pages/login.dart';
import 'pages/shedule.dart';
import 'pages/route.dart';

import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a loading process
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to home screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // background image
          Image.asset(
            'assets/Home.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo image
                Image.asset(
                  'assets/logo.png',
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 20),
                const CircularProgressIndicator(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            // background image
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            //current date and time
            Positioned(
              top: 40,
              right: 20,
              child: StreamBuilder(
                stream: Stream.periodic(const Duration(seconds: 1)),
                builder: (context, snapshot) {
                  DateTime now = DateTime.now();
                  String formattedTime = DateFormat('HH:mm').format(now);
                  String formattedDate = DateFormat('MMM d, y').format(now);

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        formattedDate,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        formattedTime,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ],
                  );
                },
              ),
            ),
            Positioned(
              top: 180,
              left: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 170, // Half of the container width
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Text(
                                  'My Route',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18, // Adjust the font size here
                                    fontWeight: FontWeight
                                        .bold, // Adjust the font weight here
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Text(
                                  'Kottawa - NSBM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20, // Adjust the font size here
                                    fontWeight: FontWeight
                                        .bold, // Adjust the font weight here
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              // Navigate to the new page when the image is tapped
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => RoutePage()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: Image.asset(
                                'assets/swap.png',
                                fit: BoxFit.contain,
                                width: 70,
                                height: 70,
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
            Positioned(
              top: 290,
              left: 20,
              right: 20,
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(93, 36, 109, 77),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Unavailability',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'KOTTAWA - NSBM 07.30 a.m Bus not available today as technical errors on the bus',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.notification_important,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 430,
              left: 40,
              right: 40,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildTile('assets/Bus.png', 'Bus Schedule', () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BusSchedulePage()),
                        );
                      }),
                      buildTile('assets/cn.png', 'Important Contact', () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImportantContactPage()),
                        );
                      }),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildTile('assets/Lf.png', 'Losts and Founds', () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LostAndFoundPage()),
                        );
                      }),
                      buildTile('assets/tik.png', 'Reservations', () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReservationsPage()),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 70,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to ',
                    style: TextStyle(
                        color: Color.fromRGBO(96, 94, 94, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'NSBM Transport',
                    style: TextStyle(
                      color: Color.fromRGBO(96, 94, 94, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Information Portal.',
                    style: TextStyle(
                      color: Color.fromRGBO(96, 94, 94, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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

Widget buildTile(
  String imagePath,
  String title,
  VoidCallback? onPressed,
) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Color.fromARGB(124, 161, 159, 159),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 50,
            height: 50,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              color: Color.fromRGBO(20, 17, 34, 1),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
