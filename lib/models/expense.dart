import 'dart:ffi';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
  }) : id = uuid.v4(); // We initializing the variable this way

  final String id;
  final String title;
  final Double amount;
  final DateTime date;
}
