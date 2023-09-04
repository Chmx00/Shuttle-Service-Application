import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentPage(),
    );
  }
}

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover,
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
                color: Colors.white,
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
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 81, 79, 79),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                
                Image.asset(
                  'assets/grl.png',
                  width: 180,
                  height: 180,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 20,
                ),

                // Large container with rounded top corners for card payment details
                Container(
                  width: double.infinity,
                  height: 582.2,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(252, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Amount (LKR)',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        '1,200.00',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),

                      // Card Holder's Name
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
                              hintText: 'Card Holder\'s Name',
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
                              hintText: 'Card Number',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      // Expiry and CVC
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Expiry
                          Container(
                            width: 150,
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
                                hintText: 'Expiry',
                                border: InputBorder.none,
                              ),
                            ),
                          ),

                          // CVC
                          Container(
                            width: 150,
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
                                hintText: 'CVC',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      // Horizontal black line
                      Divider(
                        color: Colors.black,
                        height: 20, // Adjust the height as needed
                        thickness: 1, // Adjust the thickness as needed
                        indent: 20, // Adjust the left indent as needed
                        endIndent: 20, // Adjust the right indent as needed
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.end, // Align to the right
                        children: [
                          // Visa image
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/visa.png',
                              width: 50,
                              height: 50,
                              fit: BoxFit.contain,
                            ),
                          ),
                          // Master image
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/master.png',
                              width: 50,
                              height: 50,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                      // Centered text
                      Center(
                        child: Text(
                          'Approved by the Central Bank of Sri Lanka',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color.fromARGB(255, 165, 164, 164),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      // Checkbox and text rows
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check,
                                    size: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Save my card details for faster payments.',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text.rich(
                                    TextSpan(
                                      text: 'I agree to ',
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Terms And Conditions',
                                          style: TextStyle(
                                            color: Colors.blue,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      // Pay Now button
                      Container(
                        width: 500,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Center(
                          child: Text(
                            'Pay Now',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
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
        ],
      ),
    );
  }
}
