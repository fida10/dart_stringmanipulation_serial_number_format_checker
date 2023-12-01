import 'package:stringmanipulation_serial_number_format_checker/stringmanipulation_serial_number_format_checker.dart';
import 'package:test/test.dart';

void main() {
  group('Serial Number Format Checker Tests', () {
    test('Valid serial number', () {
      expect(isValidSerialNumber('ABC-1234-XYZ'), isTrue);
    });

    test('Invalid serial number format', () {
      expect(isValidSerialNumber('ABCD-1234-XYZ'), isFalse);
    });

    test('Invalid numeric sequence in serial number', () {
      expect(isValidSerialNumber('ABC-12345-XYZ'), isFalse);
    });

    test('Invalid alphabetic parts in serial number', () {
      expect(isValidSerialNumber('AB1-1234-X2Z'), isFalse);
    });
  });
}
