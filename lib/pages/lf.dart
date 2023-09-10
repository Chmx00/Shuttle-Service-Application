import 'package:flutter/material.dart';


class LostAndFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading:IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {  },
          ),//Icon button
          title: Text("Lost & Founds", style: TextStyle(
            color: Color.fromRGBO(68, 67, 67, 1),
            fontSize: 23,
            fontWeight: FontWeight.bold
          ),), //TextStyle //Text
          elevation: 0,
          backgroundColor: Colors.transparent,
        ), //AppBar
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
                                            /*  Navigator.of(context).push(MaterialPageRoute(
                                                builder: (_) {
                                                  return TestPage(); */
                                                }
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
                          ),
                          
                        ],
                      ),
                      SizedBox(height: 20),
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
