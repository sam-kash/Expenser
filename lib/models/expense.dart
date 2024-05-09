import 'dart:ffi';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Catagory {
  food,
  teavel,
  leasure,
  work
} // These values are not wrapped in '', so these are not strings specially

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.catagory,
  }) : id = uuid.v4(); // We initializing the variable this way

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Catagory catagory;
}
