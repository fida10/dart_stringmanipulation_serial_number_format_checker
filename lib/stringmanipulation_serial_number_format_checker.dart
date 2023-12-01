/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/stringmanipulation_serial_number_format_checker_base.dart';

/*
Practice Question 1: Serial Number Format Checker

Task:

Write a function to check if a serial number is in the correct format. 
A valid serial number should follow the pattern ABC-1234-XYZ, 
where ABC and XYZ are alphabetic characters, and 1234 is a numeric sequence.
 */

bool isValidSerialNumber(String candidate){
  return RegExp(r'^[A-Z]{3}-[0-9]{4}-[A-Z]{3}$').hasMatch(candidate);
}