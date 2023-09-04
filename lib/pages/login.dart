import 'package:flutter/material.dart';

class ReservationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Shedule Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the Losts and Founds page.',
              style: TextStyle(fontSize: 24.0),
            ),
            // Add your content for the Losts and Founds page here
          ],
        ),
      ),
    );
  }
}
