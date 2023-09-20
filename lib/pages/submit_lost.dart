import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
import 'lf.dart';

class SubmitLost extends StatefulWidget {
  const SubmitLost({super.key});

  @override
  State<SubmitLost> createState() => _SubmitLostState();
}

class _SubmitLostState extends State<SubmitLost> {
  String? _itemType;
  bool _agreeMe = false;
  bool _radioSelected = false; //added to track the radio section
  File? _image1;
  File? _image2;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  TextEditingController _locationController = TextEditingController();
  TextEditingController _contactPersonController = TextEditingController();
  TextEditingController _contactNumberController = TextEditingController();

  // Validation functions for text fields
  String? _validateLocation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Location is required';
    }
    return null;
  }
  
  String? _validateContactPerson(String? value) {
    if (value == null || value.isEmpty) {
      return 'Contact Person is required';
    }
    return null;
  }

  String? _validateContactNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Contact Number is required';
    }
    return null;
  }

  // Function to check if all fields are valid
  bool _allFieldsValid() {
    return _validateLocation(_locationController.text) == null &&
        _validateContactPerson(_contactPersonController.text) == null &&
        _validateContactNumber(_contactNumberController.text) == null &&
        _itemType != null && _radioSelected && _agreeMe;
  }

  // Function to show date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  } 

  // Function to show time picker
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  } 

  Future getImage(int containerNumber) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        if (containerNumber == 1) {
          _image1 = File(pickedFile.path);
        } else if (containerNumber == 2) {
          _image2 = File(pickedFile.path);
        }
      });
    }
  } 

  Widget _buildAgreeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: const Color.fromARGB(255, 65, 62, 62)),
            child: Checkbox(
              value: _agreeMe,
              checkColor: const Color.fromARGB(255, 72, 219, 77),
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _agreeMe = value!;
                });
              },
            ),
          ),
          Text(
            'I agree to Terms and Conditions',
            
          ),
        ],
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: Stack(
          children: [
            //background image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/submit_lost.png'),
                  fit: BoxFit.fill
                ),
              ),  
            ),
            //Back button in the top left corner
            Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.pop(context,LostAndFound());
              },
            ),
          ),
          // Content on the background image
            Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Center(
                    child: Text(
                      'Submit Lost',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 82, 81, 81),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
               // SizedBox(height:10),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                         // height: 673,
                         height: MediaQuery.of(context).size.height * 0.84,
                          decoration: BoxDecoration(
                            color: Colors.white, // Background color of the container
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05,
                            vertical: 20.0,
                          ),
                          child: Expanded(
                            child: SingleChildScrollView( //wrap the column in widget for scroll the textfields
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 10.0),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Add Photos',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                  Row(
                                      children: [
                                        Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            getImage(1);
                                          },
                                          child: Container(
                                            //padding: EdgeInsets.all(20.0),
                                            alignment: Alignment.center,
                                            height: 150,
                                            margin: EdgeInsets.only(right: 9.0),
                                            color: const Color.fromARGB(255, 203, 198, 198),
                                            child: _image1 != null
                                                ? Image.file(
                                                  _image1!,
                                                  fit:BoxFit.fill, // to cover the entire conatainer
                                                  )
                                                : Text('Add here'),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            getImage(2);
                                          },
                                          child: Container(
                                            //padding: EdgeInsets.all(20.0),
                                            alignment: Alignment.center,
                                            height: 150,
                                            margin: EdgeInsets.only(left: 9.0),
                                            color: const Color.fromARGB(255, 203, 198, 198),
                                            child: _image2 != null
                                                ? Image.file(
                                                  _image2!,
                                                  fit: BoxFit.fill,  // to cover the entire conatainer
                                                  )
                                                : Text('Add here'),
                                          ),
                                        ),
                                      ),
                                      ],
                                    ),
                                          
                                  SizedBox(height: 10.0),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: GestureDetector(
                                        onTap: () {
                                          // Clear the images when "Change Photo" is clicked
                                          setState(() {
                                            _image1 = null;
                                            _image2 = null;
                                          });
                                        },
                                        child: Text(
                                          'Change Photo',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue, // Add a color to make it clickable
                                          ),
                                        ),
                                      ),
                                    ),
                          
                                    SizedBox(height: 30.0),
                            
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Time',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20.0),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: GestureDetector(   
                                            onTap: () {
                                              _selectDate(context); // Show date picker when the date icon is tapped
                                            },
                                            child: Icon(Icons.date_range), // Date icon
                                          ),
                                        ),
                                        SizedBox(width: MediaQuery.of(context).size.width * 0.35), // Adjust the width as needed for spacing
                          
                                        GestureDetector(
                                          onTap: () {
                                            _selectTime(context); // Show time picker when the time icon is tapped
                                          },
                                          child: Icon(Icons.access_time), // Time icon
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5.0), // Add spacing between the row and the line
                                      Container(
                                        height: 1.0, // Height of the line
                                        color: Color.fromARGB(255, 118, 119, 120), // Color of the line
                                      ),
                                  
                                    SizedBox(height: 20.0),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Location',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _locationController,
                                      decoration: InputDecoration(
                                        errorText: _validateLocation(_locationController.text),
                                      ),
                                    ),
                            
                                    SizedBox(height: 20.0),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Contact Person',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _contactPersonController,
                                      decoration: InputDecoration(
                                        errorText: _validateContactPerson(_contactPersonController.text),
                                      ),
                                    ),
                            
                                    SizedBox(height: 20.0),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Contact Number',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _contactNumberController,
                                      maxLength: 10,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        errorText: _validateContactNumber(_contactNumberController.text),
                                      ),
                                    ),
                            
                                    SizedBox(height: 10.0),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Select Type',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                          
                                    SizedBox(height: 15.0),
                                      Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [                                           
                                             Align(
                                              alignment: Alignment.centerLeft ,
                                               child: Radio<String>(
                                                value: 'Lost',
                                                groupValue: _itemType,
                                                onChanged: (value) {
                                                  // Handle radio button selection
                                                  setState(() {
                                                    _itemType = value;
                                                    _radioSelected = true; // Radio button selected
                                                  }
                                                 );
                                                },
                                              ),
                                             ),
                                            Text('Lost'),
                                            SizedBox(width: MediaQuery.of(context).size.width * 0.35),
                                            Radio<String>(
                                              value: 'Found',
                                              groupValue: _itemType,
                                              onChanged: (value) {
                                                // Handle radio button selection
                                                setState(() {
                                                  _itemType = value;
                                                  _radioSelected = true; // Radio button selected
                                                }
                                               );
                                              },
                                            ),
                                            Text('Found'),
                                          ],
                                        ),
                                    SizedBox(height: 5.0), // Add spacing between the row and the line
                                      Container(
                                        height: 1.0, // Height of the line
                                        color: Color.fromARGB(255, 118, 119, 120), // Color of the line
                                      ), 
                                  
                                    SizedBox(height: 20.0),
                                    // try to add agree check box
                                    _buildAgreeCheckbox(),
                          
                                    SizedBox(height: 30.0),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.6, // Adjust the width 
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              // Show a confirmation dialog
                                              showDialog(
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Text("Confirmation"),
                                                    content: Text("Are you sure?"),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        child: Text("Yes"),
                                                        onPressed: () {
                                                          // Perform the cancel action 
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder: (context) => LostAndFound()), 
                                                          );
                                                          
                                                        },
                                                      ),
                                                      TextButton(
                                                        child: Text("No"),
                                                        onPressed: () {
                                                          Navigator.of(context).pop(); 
                                                          
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color.fromARGB(255, 255, 132, 0),
                                              padding: EdgeInsets.all(20.0),
                                            ),
                                            child: Text('Cancel'),
                                          ),

                                          ElevatedButton(
                                            onPressed: _allFieldsValid()
                                                ? () {
                                                    // Handle submit button press
                                                  }
                                                : null, // Disable the button if any field is invalid
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color.fromARGB(255, 255, 132, 0),
                                              padding: EdgeInsets.all(20.0),
                                            ),
                                            child: Text('Submit'),
                                          ),
                                        ],
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
              ]
            ),
          ),
       ]
     ),
    );
  }
}

