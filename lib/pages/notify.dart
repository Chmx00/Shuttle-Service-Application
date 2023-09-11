import 'package:flutter/material.dart';

class NewsAndUpdatesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/Home.png', // Replace with the path to your background image
            fit: BoxFit.cover,
          ),
          // Content
          Column(
            children: [
              SizedBox(height: 20), // Spacer

              // "News and Updates" Text
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'News And Updates',
                  style: TextStyle(
                    color: Color.fromARGB(255, 81, 80, 80),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // List of Containers with News Text
              Expanded(
                child: ListView.builder(
                  itemCount: 10, // Number of containers
                  itemBuilder: (BuildContext context, int index) {
                    // Sample text for news
                    String newsText =
                        'KOTTAWA - NSBM 07.30 a.m Bus not available today as technical errors on the bus. sory for the lorem lipsum';

                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(46, 255, 255, 255)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        newsText,
                        style: TextStyle(
                          color: Color.fromARGB(255, 81, 80, 80),
                          fontSize: 16,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          // Back Button
          Positioned(
            top: 30, // Adjust the top position as needed
            left: 20, // Adjust the left position as needed
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 81, 80, 80),
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Navigate back
              },
            ),
          ),
        ],
      ),
    );
  }
}
