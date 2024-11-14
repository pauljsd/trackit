import 'package:flutter/material.dart';

class Transaction {
  final bool? income;
  final IconData icon;
  final String category;
  final String categoryDetail;
  final double amount;

  Transaction({
    this.income = false,
    required this.icon,
    required this.category,
    required this.categoryDetail,
    required this.amount,
  });
}
