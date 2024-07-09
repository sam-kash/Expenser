import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Catagory {
  food,
  travel,
  leasure,
  work
} // These values are not wrapped in '', so these are not strings specially

const catagoryIcons = {
  Catagory.food: Icons.lunch_dining_outlined,
  Catagory.travel: Icons.flight_takeoff,
  Catagory.work: Icons.work_outline_sharp,
  Catagory.leasure: Icons.movie_outlined,
};

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

  String get formattedDate {
    return formatter.format(date);
  }
}

class ExpenseBucket {
  const ExpenseBucket({required this.catagory, required this.expenses});

  final Catagory catagory;
  final List<Expense> expenses;

  double get totalExpenses {
    double sum = 0;
    for (final expense in expenses) {
      sum += expense.amount;
    }

    return sum;
  }
}
