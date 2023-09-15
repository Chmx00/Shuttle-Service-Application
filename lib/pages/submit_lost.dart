import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
import 'package:transport_portal/pages/lost_items.dart';


class SubmitLost extends StatefulWidget {
  const SubmitLost({super.key});

  @override
  State<SubmitLost> createState() => _SubmitLostState();
}

class _SubmitLostState extends State<SubmitLost> {
  String? _itemType;
  bool _agreeMe = false;
  File? _image1;
  File? _image2;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

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
              checkColor: Colors.green,
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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading:IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            //back to the lost item page
            onPressed: () { 
              Navigator.pop(context,lostitems());
             },
          ),
        title: Text("Submit Lost", style: TextStyle(
          color: Color.fromRGBO(68, 67, 67, 1),
          fontSize: 23,
          fontWeight: FontWeight.bold
          ),
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
                  image: AssetImage('assets/submit_lost.png'),
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
                 // height: 673,
                 height: MediaQuery.of(context).size.height * 0.84,
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                  ),
                  padding: EdgeInsets.all(20),
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
                                fontSize: 15,
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
                                  padding: EdgeInsets.all(20.0),
                                  alignment: Alignment.center,
                                  height: 112,
                                  margin: EdgeInsets.only(right: 9.0),
                                  color: const Color.fromARGB(255, 203, 198, 198),
                                  child: _image1 != null
                                      ? Image.file(_image1!)
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
                                  padding: EdgeInsets.all(20.0),
                                  alignment: Alignment.center,
                                  height: 112,
                                  margin: EdgeInsets.only(left: 9.0),
                                  color: const Color.fromARGB(255, 203, 198, 198),
                                  child: _image2 != null
                                      ? Image.file(_image2!)
                                      : Text('Add here'),
                                ),
                              ),
                            ),
                            ],
                          ),
                        
                        SizedBox(height: 10.0),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Change Photo',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
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
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      _selectDate(context); // Show date picker when the date icon is tapped
                                    },
                                    child: Icon(Icons.date_range), // Date icon
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width * 0.35),
                                  GestureDetector(
                                    onTap: () {
                                      _selectTime(context); // Show time picker when the time icon is tapped
                                    },
                                    child: Icon(Icons.access_time), // Time icon
                                  ),
                                ],
                              ),
                            ),
                          ),
                  
                          SizedBox(height: 20.0),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Location',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(),
                          ),
                  
                          SizedBox(height: 20.0),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Contact Person',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(),
                          ),
                  
                          SizedBox(height: 20.0),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Contact Number',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(),
                          ),
                  
                          SizedBox(height: 20.0),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Select Type',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          //SizedBox(height: 20.0),
                          TextFormField(
                            decoration: InputDecoration(
                              prefix: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                   Radio<String>(
                                    value: 'Lost',
                                    groupValue: _itemType,
                                    onChanged: (value) {
                                      // Handle radio button selection
                                      setState(() {
                                        _itemType = value;
                                      }
                                     );
                                    },
                                  ),
                                  Text('Lost'),
                                  Radio<String>(
                                    value: 'Found',
                                    groupValue: _itemType,
                                    onChanged: (value) {
                                      // Handle radio button selection
                                      setState(() {
                                        _itemType = value;
                                      }
                                     );
                                    },
                                  ),
                                  Text('Found'),
                                ],
                              ),
                            ),
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
                                    // Handle cancel button press
                                  },
                                    style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(255, 255, 132, 0),
                                    padding: EdgeInsets.all(20.0), // Adjust button padding 
                                  ),
                                  child: Text('Cancel'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Handle submit button press
                                  },
                                    style: ElevatedButton.styleFrom(                                   
                                    backgroundColor: Color.fromARGB(255, 255, 132, 0),
                                    padding: EdgeInsets.all(20.0), // Adjust button padding 
                                  ),
                                  child: Text('Submit'),
                                ),
                              ],
                            ),
                          )
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

