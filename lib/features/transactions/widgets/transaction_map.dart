import 'package:flutter/material.dart';
import 'package:trackit/features/transactions/widgets/transaction_model.dart';

class TransactionEntries {
  final Map<String, Transaction> transactions = {
    '01': Transaction(
      amount: 5000,
      category: 'Utility',
      categoryDetail: 'Shoes',
      icon: Icons.abc_rounded,
    ),
    '02': Transaction(
      income: true,
      amount: 500000,
      category: 'Sporty',
      categoryDetail: 'Coding',
      icon: Icons.abc_rounded,
    ),
    '03': Transaction(
        amount: 3000,
        category: 'Food',
        categoryDetail: 'Suya Rice',
        icon: Icons.shopping_cart),
    '04': Transaction(
      amount: 1500,
      category: 'Transport',
      categoryDetail: 'Taxi',
      icon: Icons.directions_car,
    ),
    '05': Transaction(
      income: true,
      amount: 15000000,
      category: 'Salary',
      categoryDetail: 'FBN',
      icon: Icons.directions_car,
    ),
  };
  final Map<String, Transaction> yesterdayTransactions = {
    '01': Transaction(
      income: true,
      amount: 50000,
      category: 'Tap Tap',
      categoryDetail: 'Dogs',
      icon: Icons.abc_rounded,
    ),
    '02': Transaction(
      category: 'Transport',
      categoryDetail: 'Bolt',
      amount: 9000,
      icon: Icons.abc_rounded,
    ),
    '03': Transaction(
        amount: 3700,
        category: 'Food',
        categoryDetail: 'Amoke',
        icon: Icons.shopping_cart),
    '04': Transaction(
      income: true,
      amount: 15000,
      category: 'Remote',
      categoryDetail: 'Flutter',
      icon: Icons.directions_car,
    ),
  };
}
