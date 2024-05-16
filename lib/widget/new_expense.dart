import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  var _enterTitle = '';

  void _saveTitleInput(String inputValue) {
    _enterTitle = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: _saveTitleInput,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_enterTitle);
                },
                child: const Text('Save Expense'),
              )
            ],
          )
        ],
      ),
    );
  }
}
