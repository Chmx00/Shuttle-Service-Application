import 'package:flutter/material.dart';
import 'package:transport_portal/pages/lost_items.dart';

<<<<<<< HEAD
class ReservationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Padding(
            padding: const EdgeInsets.all(0), // Adjust padding as needed
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Home.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Back Icon in the top-left corner
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.grey,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          // Content on top of the background image
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 81, 79, 79),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0), // Adjust the padding as needed
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo.png', // Replace with your image path
                        width: 175, // Adjust the width as needed
                        height: 175, // Adjust the height as needed
                        // You can also use other properties like fit, alignment, etc.
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 441,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(252, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(
                            0, 3), // Offset to control the shadow's position
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.only(
                      top: 100, left: 20, right: 20, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(
                                255, 236, 236, 236), // Gray color
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextField(
                            textAlign: TextAlign.left,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              hintText: 'Username',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Card Number
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(
                                255, 236, 236, 236), // Gray color
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextField(
                            textAlign: TextAlign.left,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                            ),
                            obscureText: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 31, 158, 69),
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(68, 29, 255, 119)
                                  .withOpacity(0.7), // Shadow color
                              spreadRadius: 2, // Spread radius
                              blurRadius: 10, // Blur radius
                              offset: Offset(0,
                                  3), // Offset to control the shadow's position
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
=======
import 'submit_lost.dart';

class lf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading:IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {  },
          ),
          title: Text("Lost & Founds", style: TextStyle(
            color: Color.fromRGBO(68, 67, 67, 1),
            fontSize: 23,
            fontWeight: FontWeight.bold
          ),),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            //background image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Shedule.png'),
                  fit: BoxFit.fill
          ),
        ),  
      ),
        Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Container from middle to bottom
                Container(
                  //height: 509,
                  height: MediaQuery.of(context).size.height * 0.63,
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
                             height: 86,
                             decoration: BoxDecoration(
                             color: const Color.fromARGB(255, 123, 196, 255),
                             borderRadius:BorderRadius.circular(22)
                            ),
                            child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 20.0),
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 123, 196, 255)),
                                            ),
                                            onPressed: () { 
                                              Navigator.of(context).push(MaterialPageRoute(
                                                builder: (_) {
                                                 return lostitems();
                                                },
                                              ));
                                             },
                                            child: Text(
                                              'Lost Items',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                              ),
                                            ),
                                          )),
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: Image.asset(
                                                'assets/lost.PNG',
                                                height: 60,
                                                width: 60,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                          ),
                          ],
                        ),
                        SizedBox(height: 20),

                        //Next commit start point

                      Column(
                        children: [
                          Container(
                             width: double.infinity,
                             height: 86,
                             decoration: BoxDecoration(
                             color: const Color.fromARGB(255, 123, 196, 255),
                             borderRadius:BorderRadius.circular(22)
                            ),
                            child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 20.0),
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                             backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 123, 196, 255)), 
                                            ),
                                            onPressed: () { 
                                              Navigator.of(context).push(MaterialPageRoute(
                                                builder: (_) {
                                                 return SubmitLost();
                                                }
                                              ));
                                             },
                                            child: Text(
                                              'Sumbit Lost/\nFound Items',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                              ),
                                            ),
                                          )),
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: Image.asset(
                                                'assets/lost.PNG',
                                                height: 60,
                                                width: 60,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
>>>>>>> b491da1b5d329c8f0ff67484c81135f72b8b4449
                          ),
                        ),
                      ),
<<<<<<< HEAD
=======
                      SizedBox(height: 20),

                      // 3rd commit
                      Column(
                        children: [
                          Container(
                             width: double.infinity,
                             height: 86,
                             decoration: BoxDecoration(
                             color: const Color.fromARGB(255, 123, 196, 255),
                             borderRadius:BorderRadius.circular(22)
                            ),
                            child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 123, 196, 255)),
                                          ),
                                          onPressed: () {  },
                                          child: Text(
                                            'Instruction',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                            ),
                                          ),
                                        )),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 10.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image.asset(
                                              'assets/lost.PNG',
                                              height: 60,
                                              width: 60,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                     
>>>>>>> b491da1b5d329c8f0ff67484c81135f72b8b4449
                    ],
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
