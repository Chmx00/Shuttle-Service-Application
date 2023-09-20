import 'package:flutter/material.dart';
import 'lost_items.dart';
import 'submit_lost.dart';

class LostAndFound extends StatelessWidget {
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
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) {
                                  return lostitems();
                                },
                              ));
                            },
                            child: Container(
                              width: double.infinity,
                              height: 86,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 123, 196, 255),
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Lost Items',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20.0),
                                        child: Image.asset(
                                          'assets/lost.PNG',
                                          height: 60,
                                          width: 60,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                        //Next commit start point

                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) {
                                  return SubmitLost();
                                },
                              ));
                            },
                            child: Container(
                              width: double.infinity,
                              height: 86,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 123, 196, 255),
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Submit Lost &\nFound Items',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20.0),
                                        child: Image.asset(
                                          'assets/lost.PNG',
                                          height: 60,
                                          width: 60,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      // 3rd commit
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Add navigation logic for the third container
                            },
                            child: Container(
                              width: double.infinity,
                              height: 86,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 123, 196, 255),
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Instruction',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20.0),
                                        child: Image.asset(
                                          'assets/lost.PNG',
                                          height: 60,
                                          width: 60,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),                    
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
