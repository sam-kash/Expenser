import 'package:expenser/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Fl course',
      amount: 19.99,
      date: DateTime.now(),
      catagory: Catagory.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15,
      69,
      date: DateTime.now(),
      catagory: Catagory.leasure,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('The Chart will be set here'),
          SizedBox(
            height: 30,
          ),
          Text('Expense List ...'),
        ],
      ),
    );
  }
}
