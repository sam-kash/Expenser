import 'package:flutter/material.dart';
import 'package:expenser/widget/expenses.dart';

var kcolorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
          colorScheme: kcolorScheme,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kcolorScheme.onPrimaryContainer,
              foregroundColor: kcolorScheme.primaryContainer)),
      home: const Expenses(),
    ),
  );
}
