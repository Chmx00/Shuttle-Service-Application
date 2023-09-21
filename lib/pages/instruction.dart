import 'package:flutter/material.dart';

class instructions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text(
          "Instructions",
          style: TextStyle(
              color: Color.fromRGBO(68, 67, 67, 1),
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          //background image

          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/lostandfound.png'),
                  fit: BoxFit.fill),
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Container from middle to bottom

                Container(
                  height: 570,
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Three separate columns inside the container

                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 123, 196, 255),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons
                                              .brightness_1, // You can use any dot-like icon here
                                          size: 12, // Adjust the size as needed
                                          color: Colors
                                              .black, // Adjust the color as needed
                                        ),
                                        SizedBox(
                                            height:
                                                10), // Adjust the spacing between the dot and text
                                        Icon(
                                          Icons
                                              .brightness_1, // Add another dot for the second line
                                          size: 12, // Adjust the size as needed
                                          color: Colors
                                              .black, // Adjust the color as needed
                                        ),
                                        SizedBox(
                                            height:
                                                10), // Adjust the spacing between the dot and text
                                        Icon(
                                          Icons
                                              .brightness_1, // Add another dot for the third line
                                          size: 12, // Adjust the size as needed
                                          color: Colors
                                              .black, // Adjust the color as needed
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        width:
                                            10), // Adjust the spacing between the dots and text
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 10.0,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Provide Trip Details',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                ),
                                              ),
                                              Text(
                                                'Date and time of the trip.',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                'Pickup and drop-off locations',
                                                style: TextStyle(
                                                  fontSize: 16,
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
                          ],
                        ),

                        SizedBox(height: 20),

                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 123, 196, 255),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons
                                              .brightness_1, // You can use any dot-like icon here
                                          size: 12, // Adjust the size as needed
                                          color: Colors
                                              .black, // Adjust the color as needed
                                        ),
                                        SizedBox(
                                            height:
                                                10), // Adjust the spacing between the dot and text
                                        Icon(
                                          Icons
                                              .brightness_1, // Add another dot for the second line
                                          size: 12, // Adjust the size as needed
                                          color: Colors
                                              .black, // Adjust the color as needed
                                        ),
                                        SizedBox(
                                            height:
                                                10), // Adjust the spacing between the dot and text
                                        Icon(
                                          Icons
                                              .brightness_1, // Add another dot for the third line
                                          size: 12, // Adjust the size as needed
                                          color: Colors
                                              .black, // Adjust the color as needed
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        width:
                                            10), // Adjust the spacing between the dots and text
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 10.0,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Describe the Lost Item',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                ),
                                              ),
                                              Text(
                                                'Brand, color, and model.',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                'Any distinctive features or markings.',
                                                style: TextStyle(
                                                  fontSize: 16,
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
                          ],
                        ),

                        SizedBox(height: 20),

                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 123, 196, 255),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons
                                              .brightness_1, // You can use any dot-like icon here
                                          size: 12, // Adjust the size as needed
                                          color: Colors
                                              .black, // Adjust the color as needed
                                        ),
                                        SizedBox(
                                            height:
                                                10), // Adjust the spacing between the dot and text
                                        Icon(
                                          Icons
                                              .brightness_1, // Add another dot for the second line
                                          size: 12, // Adjust the size as needed
                                          color: Colors
                                              .black, // Adjust the color as needed
                                        ),
                                        SizedBox(
                                            height:
                                                10), // Adjust the spacing between the dot and text
                                        Icon(
                                          Icons
                                              .brightness_1, // Add another dot for the third line
                                          size: 12, // Adjust the size as needed
                                          color: Colors
                                              .black, // Adjust the color as needed
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        width:
                                            10), // Adjust the spacing between the dots and text
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 10.0,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Prevent Future Loss',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                ),
                                              ),
                                              Text(
                                                'To minimize the risk of losing items in the future, double-check the vehicle before exiting.',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                'Pickup and drop-off locations',
                                                style: TextStyle(
                                                  fontSize: 16,
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
                            SizedBox(height: 20),
                          ],
                        ),
                      ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
