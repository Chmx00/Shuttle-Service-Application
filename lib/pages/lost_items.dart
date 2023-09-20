import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ListItem {
  final String imageUrl; // Image URL or local path
  final String time;
  final String location;
  final String contactName;
  final String contactNumber;
  final String status;

  ListItem({
    required this.imageUrl,
    required this.time,
    required this.location,
    required this.contactName,
    required this.contactNumber,
    required this.status,
  });
}

class lostitems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<ListItem> itemList = [
      // Define your list of ListItem objects here
      ListItem(
        imageUrl: 'assets/mayweed-8120555_1280.jpg',
        time: '9:00 AM',
        location: 'Sample Location 1',
        contactName: 'John Doe',
        contactNumber: '123-456-7890',
        status: 'Lost',
      ),
      ListItem(
        imageUrl: 'assets/ducklings-7993465_1280.jpg',
        time: '9:00 AM',
        location: 'Sample Location 1',
        contactName: 'John Doe',
        contactNumber: '123-456-7890',
        status: 'Lost',
      ),
      ListItem(
        imageUrl: 'assets/flowers-8081925_1920.jpg',
        time: '9:00 AM',
        location: 'Sample Location 1',
        contactName: 'John Doe',
        contactNumber: '123-456-7890',
        status: 'Found',
      ),

      // Add more items here...
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text(
          "Lost Items",
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
                  height: 440,
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                  ),
                  child: ListView.builder(
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      final item = itemList[index];

                      return Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 238, 255),
                          border: Border.all(
                            color: const Color.fromARGB(255, 88, 86, 86),
                          ),
                          borderRadius: BorderRadius.circular(
                              10), // Add border for a square shape
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width:
                                  200, // Set a fixed width for the circular image
                              height:
                                  150, // Set a fixed height for the circular image
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    10), // Half of the width or height to create a circle
                                child: CarouselSlider(
                                  items: [
                                    Image.asset(item.imageUrl),
                                    Image.asset(item.imageUrl),
                                  ],
                                  options: CarouselOptions(
                                    height: 150.0,
                                    aspectRatio: 16 / 9,
                                    viewportFraction: 1.0,
                                    initialPage: 0,
                                    enableInfiniteScroll: true,
                                    reverse: false,
                                    autoPlay: true,
                                    autoPlayInterval: Duration(seconds: 3),
                                    autoPlayAnimationDuration:
                                        Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enlargeCenterPage: false,
                                    onPageChanged: (index, reason) {
                                      // Handle on page changed
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Add spacing between image and text
                                Text(
                                  "Time: ${item.time}\n",
                                  style: TextStyle(
                                    fontSize: 20, // Increase the font size
                                    // Optionally, make the text bold
                                  ),
                                ),
                                Text(
                                  "location: ${item.location}\n",
                                  style: TextStyle(
                                    fontSize: 20, // Increase the font size
                                    // Optionally, make the text bold
                                  ),
                                ),
                                Text(
                                  "contact name: ${item.contactName}\n",
                                  style: TextStyle(
                                    fontSize: 20, // Increase the font size
                                    // Optionally, make the text bold
                                  ),
                                ),
                                Text(
                                  "contact Number: ${item.contactNumber}\n",
                                  style: TextStyle(
                                    fontSize: 20, // Increase the font size
                                    // Optionally, make the text bold
                                  ),
                                ),
                                Text(
                                  "Status: ${item.status}",
                                  style: TextStyle(
                                    fontSize: 20, // Increase the font size
                                    // Optionally, make the text bold
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: SizedBox(
                    height: 120, // Add spacing between text and buttons
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle the first button press
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 241, 57, 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 15), // Adjust button padding
                            textStyle: TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Set the radius here
                            ), // Increase font size
                          ),
                          child: Text("Button 1"),
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
