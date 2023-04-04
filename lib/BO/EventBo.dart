import 'package:flutter/material.dart';

// Create a class named Bo
class Bo {

  // Initialize a string named date
  String date;

  // Initialize a string named bookmark
  bool bookmark;
  
  // Initialize a string named title
  String title;
  // Initialize a string named personone
  String personOne ;
  // Initialize a string named personone
  String personTwo;
  // Initialize a string named address
  String address ;
  // Initialize a string named image
  String image ;
  // Initialize a string named location
  String location ;
  // Initialize a string named organizer
  String organizer ;
  // Initialize a string named month
  String month ;
  // Initialize a string named aboutEvent
  String aboutEvent;
 
  // Create a constructor for the class Bo and make the parameter value's required
  Bo(
      {required this.date,
      required this.bookmark,
      required this.title,
      required this.personOne,
      required this.personTwo,
      required this.address,
      required this.image,
      required this.location,
      required this.organizer,
      required this.month,
      required this.aboutEvent
});
}
